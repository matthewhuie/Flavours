.class Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorManager"
.end annotation


# instance fields
.field private mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

.field private mBackgroundColor:I

.field private mColorWaitInput:I

.field private mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

.field private mCopyBuffer:Landroid/text/SpannableStringBuilder;

.field private mCurEnd:I

.field private mCurStart:I

.field private mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field private mEditFlag:Z

.field private mKeepNonLineSpan:Z

.field private mMode:I

.field private mSizeWaitInput:I

.field private mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

.field private mSoftKeyBlockFlag:Z

.field private mState:I

.field private mTextIsFinishedFlag:Z

.field private mWaitInputFlag:Z

.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .registers 6
    .parameter
    .parameter "est"
    .parameter "dialog"

    .prologue
    const v1, 0xffffff

    const/4 v0, 0x0

    .line 963
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    .line 945
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    .line 946
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    .line 947
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    .line 948
    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    .line 949
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 950
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 951
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    .line 952
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    .line 953
    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    .line 954
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    .line 955
    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    .line 964
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 965
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {v0, p1, v1, p0, p3}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    .line 966
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    .line 967
    return-void
.end method

.method static synthetic access$200(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelectState(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEditMode(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->copyToClipBoard()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cutToClipBoard()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isTextSelected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelectStartPos()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelectEndPos()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->pasteFromClipboard()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->selectAll()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertHorizontalLine()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->clearStyles()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->fixSelectionAndDoNextAction()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Landroid/net/Uri;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageFromUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageFromResId(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->startEdit()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->endEdit()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 940
    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setInternalSelection(II)V

    return-void
.end method

.method private addMarquee(I)V
    .registers 5
    .parameter "marquee"

    .prologue
    .line 1723
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- addMarquee:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setLineStyledTextSpan(Ljava/lang/Object;)V

    .line 1726
    return-void
.end method

.method private addSwing()V
    .registers 2

    .prologue
    .line 1718
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addMarquee(I)V

    .line 1719
    return-void
.end method

.method private addTelop()V
    .registers 2

    .prologue
    .line 1714
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addMarquee(I)V

    .line 1715
    return-void
.end method

.method private changeAlign(Landroid/text/Layout$Alignment;)V
    .registers 3
    .parameter "align"

    .prologue
    .line 1710
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v0, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setLineStyledTextSpan(Ljava/lang/Object;)V

    .line 1711
    return-void
.end method

.method private changeColorSelectedText(I)V
    .registers 5
    .parameter "color"

    .prologue
    .line 1702
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-eq v0, v1, :cond_13

    .line 1703
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    .line 1707
    :goto_12
    return-void

    .line 1705
    :cond_13
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "---changeColor: Size of the span is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private changeSizeSelectedText(I)V
    .registers 5
    .parameter "size"

    .prologue
    .line 1694
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-eq v0, v1, :cond_13

    .line 1695
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    .line 1699
    :goto_12
    return-void

    .line 1697
    :cond_13
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "---changeSize: Size of the span is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private clearStyles()V
    .registers 3

    .prologue
    .line 1109
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClearStyles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->clearStyles(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$600(Lcom/android/ex/editstyledtext/EditStyledText;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    const v0, 0xffffff

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    .line 1114
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onRefreshZeoWidthChar()V

    .line 1115
    return-void
.end method

.method private clearStyles(Ljava/lang/CharSequence;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1078
    const-string v1, "EditStyledText"

    const-string v2, "--- onClearStyles"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1081
    instance-of v2, p1, Landroid/text/Editable;

    if-eqz v2, :cond_48

    .line 1082
    check-cast p1, Landroid/text/Editable;

    .line 1083
    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 1084
    array-length v2, v1

    :goto_19
    if-ge v0, v2, :cond_48

    aget-object v3, v1, v0

    .line 1085
    instance-of v4, v3, Landroid/text/style/ParagraphStyle;

    if-nez v4, :cond_2d

    instance-of v4, v3, Landroid/text/style/QuoteSpan;

    if-nez v4, :cond_2d

    instance-of v4, v3, Landroid/text/style/CharacterStyle;

    if-eqz v4, :cond_45

    instance-of v4, v3, Landroid/text/style/UnderlineSpan;

    if-nez v4, :cond_45

    .line 1088
    :cond_2d
    instance-of v4, v3, Landroid/text/style/ImageSpan;

    if-nez v4, :cond_35

    instance-of v4, v3, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v4, :cond_42

    .line 1089
    :cond_35
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1090
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 1091
    const-string v6, ""

    invoke-interface {p1, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1093
    :cond_42
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1084
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1097
    :cond_48
    return-void
.end method

.method private copyToClipBoard()V
    .registers 7

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1475
    .local v3, min:I
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1476
    .local v2, max:I
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/SpannableStringBuilder;

    iput-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    .line 1477
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1478
    .local v1, clipboardtxt:Landroid/text/SpannableStringBuilder;
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1481
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1483
    invoke-direct {p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dumpSpannableString(Ljava/lang/CharSequence;)V

    .line 1484
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dumpSpannableString(Ljava/lang/CharSequence;)V

    .line 1486
    return-void
.end method

.method private cutToClipBoard()V
    .registers 5

    .prologue
    .line 1489
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->copyToClipBoard()V

    .line 1490
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1491
    .local v1, min:I
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1492
    .local v0, max:I
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1493
    return-void
.end method

.method private dumpSpannableString(Ljava/lang/CharSequence;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1773
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_7d

    .line 1774
    check-cast p1, Landroid/text/Spannable;

    .line 1775
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 1777
    const-string v2, "EditStyledText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- dumpSpannableString, txt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 1780
    array-length v2, v1

    :goto_34
    if-ge v0, v2, :cond_7d

    aget-object v3, v1, v0

    .line 1782
    const-string v4, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- dumpSpannableString, class:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1790
    :cond_7d
    return-void
.end method

.method private endEdit()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1418
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- handleCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 1421
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1422
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    .line 1423
    const v0, 0xffffff

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    .line 1424
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    .line 1425
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    .line 1426
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    .line 1427
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    .line 1428
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    .line 1429
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetSelect()V

    .line 1430
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1431
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unblockSoftKey()V

    .line 1432
    return-void
.end method

.method private findLineEnd(Landroid/text/Editable;I)I
    .registers 7
    .parameter "text"
    .parameter "current"

    .prologue
    .line 1758
    move v0, p2

    .line 1759
    .local v0, pos:I
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1760
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_42

    .line 1761
    add-int/lit8 v0, v0, 0x1

    .line 1766
    :cond_11
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- findLineEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    return v0

    .line 1759
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private findLineStart(Landroid/text/Editable;I)I
    .registers 7
    .parameter "text"
    .parameter "current"

    .prologue
    .line 1744
    move v0, p2

    .line 1745
    .local v0, pos:I
    :goto_1
    if-lez v0, :cond_d

    .line 1746
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3e

    .line 1751
    :cond_d
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- findLineStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    return v0

    .line 1745
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private fixSelectionAndDoNextAction()V
    .registers 4

    .prologue
    .line 1436
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- handleComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_2b

    .line 1455
    :goto_2a
    return-void

    .line 1441
    :cond_2b
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ne v0, v1, :cond_4f

    .line 1443
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- cancel handle complete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    goto :goto_2a

    .line 1448
    :cond_4f
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_57

    .line 1449
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1452
    :cond_57
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    .line 1454
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$700(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_2a
.end method

.method private handleSelectAll()V
    .registers 3

    .prologue
    .line 1551
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_5

    .line 1555
    :goto_4
    return-void

    .line 1554
    :cond_5
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    goto :goto_4
.end method

.method private insertHorizontalLine()V
    .registers 7

    .prologue
    .line 1062
    const-string v2, "EditStyledText.EditorManager"

    const-string v3, "--- onInsertHorizontalLine:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    .line 1065
    .local v0, curpos:I
    if-lez v0, :cond_2d

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2d

    .line 1066
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #curpos:I
    .local v1, curpos:I
    const-string v3, "\n"

    invoke-interface {v2, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move v0, v1

    .line 1068
    .end local v1           #curpos:I
    .restart local v0       #curpos:I
    :cond_2d
    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    const/high16 v3, -0x100

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;-><init>(IILandroid/text/Spannable;)V

    add-int/lit8 v1, v0, 0x1

    .end local v0           #curpos:I
    .restart local v1       #curpos:I
    invoke-direct {p0, v2, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1071
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #curpos:I
    .restart local v0       #curpos:I
    const-string v3, "\n"

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1072
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(I)V

    .line 1073
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v2, v3, v4}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1074
    return-void
.end method

.method private insertImageFromResId(I)V
    .registers 5
    .parameter "resId"

    .prologue
    .line 1056
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$500(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1058
    return-void
.end method

.method private insertImageFromUri(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 1051
    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1053
    return-void
.end method

.method private insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V
    .registers 6
    .parameter "span"
    .parameter "curpos"

    .prologue
    .line 1730
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- insertImageSpan:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1733
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "\ufffc"

    invoke-interface {v0, p2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1734
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x21

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1736
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1741
    :goto_30
    return-void

    .line 1738
    :cond_31
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- insertImageSpan: null span was inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$900(Lcom/android/ex/editstyledtext/EditStyledText;I)V

    goto :goto_30
.end method

.method private isClipBoardChanged(Ljava/lang/CharSequence;)Z
    .registers 9
    .parameter "clipboardText"

    .prologue
    const/4 v3, 0x1

    .line 1497
    const-string v4, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- isClipBoardChanged:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    if-nez v4, :cond_1e

    .line 1515
    :cond_1d
    :goto_1d
    return v3

    .line 1502
    :cond_1e
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1503
    .local v1, len:I
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 1505
    .local v2, removedClipBoard:Ljava/lang/CharSequence;
    const-string v4, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- clipBoard:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_1d

    .line 1510
    const/4 v0, 0x0

    .local v0, i:I
    :goto_55
    if-ge v0, v1, :cond_64

    .line 1511
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_1d

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 1515
    :cond_64
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method private isTextSelected()Z
    .registers 3

    .prologue
    .line 1665
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isWaitingNextAction()Z
    .registers 4

    .prologue
    .line 1629
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- waitingNext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ne v0, v1, :cond_42

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_42

    .line 1632
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->waitSelection()V

    .line 1633
    const/4 v0, 0x1

    .line 1636
    :goto_41
    return v0

    .line 1635
    :cond_42
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resumeSelection()V

    .line 1636
    const/4 v0, 0x0

    goto :goto_41
.end method

.method private pasteFromClipboard()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 1519
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1520
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1522
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1523
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "clipboard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1526
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    .line 1527
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v4, v3, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1528
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isClipBoardChanged(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 1530
    const-string v0, "EditStyledText"

    const-string v2, "--- handlePaste: startPasteImage"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v4, Landroid/text/style/DynamicDrawableSpan;

    invoke-virtual {v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/DynamicDrawableSpan;

    .line 1535
    array-length v4, v0

    move v2, v1

    :goto_6b
    if-ge v2, v4, :cond_b5

    aget-object v1, v0, v2

    .line 1536
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1537
    instance-of v6, v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v6, :cond_94

    .line 1538
    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    const/high16 v6, -0x100

    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v8}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;-><init>(IILandroid/text/Spannable;)V

    add-int/2addr v5, v3

    invoke-direct {p0, v1, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    .line 1535
    :cond_90
    :goto_90
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6b

    .line 1540
    :cond_94
    instance-of v6, v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    if-eqz v6, :cond_90

    .line 1541
    new-instance v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v8}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v8

    invoke-direct {v6, v7, v1, v8}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    add-int v1, v3, v5

    invoke-direct {p0, v6, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    goto :goto_90

    .line 1548
    :cond_b5
    return-void
.end method

.method private removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1459
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1460
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v3, Landroid/text/style/DynamicDrawableSpan;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/DynamicDrawableSpan;

    .line 1462
    array-length v3, v0

    :goto_13
    if-ge v1, v3, :cond_2f

    aget-object v4, v0, v1

    .line 1463
    instance-of v5, v4, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-nez v5, :cond_1f

    instance-of v5, v4, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    if-eqz v5, :cond_2c

    .line 1465
    :cond_1f
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1466
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1467
    const-string v6, ""

    invoke-virtual {v2, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1462
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1470
    :cond_2f
    return-object v2
.end method

.method private resetEdit()V
    .registers 4

    .prologue
    .line 1566
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->endEdit()V

    .line 1567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    .line 1568
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1569
    return-void
.end method

.method private resumeSelection()V
    .registers 3

    .prologue
    .line 1656
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- resumeSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    .line 1659
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1661
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$700(Landroid/view/View;Landroid/text/Spannable;)V

    .line 1662
    return-void
.end method

.method private selectAll()V
    .registers 2

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 1559
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    .line 1560
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    .line 1561
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 1562
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1563
    return-void
.end method

.method private setEditMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 1245
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 1246
    return-void
.end method

.method private setInternalSelection(II)V
    .registers 3
    .parameter "curStart"
    .parameter "curEnd"

    .prologue
    .line 1316
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    .line 1317
    iput p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    .line 1318
    return-void
.end method

.method private setLineStyledTextSpan(Ljava/lang/Object;)V
    .registers 9
    .parameter "span"

    .prologue
    .line 1679
    iget v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1680
    .local v3, min:I
    iget v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1681
    .local v2, max:I
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    .line 1682
    .local v0, current:I
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineStart(Landroid/text/Editable;I)I

    move-result v4

    .line 1683
    .local v4, start:I
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineEnd(Landroid/text/Editable;I)I

    move-result v1

    .line 1684
    .local v1, end:I
    if-ne v4, v1, :cond_46

    .line 1685
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    const-string v6, "\n"

    invoke-interface {v5, v1, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1686
    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    .line 1690
    :goto_3c
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1691
    return-void

    .line 1688
    :cond_46
    invoke-direct {p0, p1, v4, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    goto :goto_3c
.end method

.method private setSelectEndPos()V
    .registers 3

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    if-ne v0, v1, :cond_14

    .line 1613
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEndPos(I)V

    .line 1617
    :goto_13
    return-void

    .line 1615
    :cond_14
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEndPos(I)V

    goto :goto_13
.end method

.method private setSelectStartPos()V
    .registers 3

    .prologue
    .line 1605
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setSelectStartPos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    .line 1608
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1609
    return-void
.end method

.method private setSelectState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 1249
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1250
    return-void
.end method

.method private setSelection()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 1573
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- onSelect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    if-ltz v0, :cond_73

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_73

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ltz v0, :cond_73

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_73

    .line 1577
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ge v0, v1, :cond_5d

    .line 1578
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    .line 1579
    iput v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1590
    :goto_5c
    return-void

    .line 1580
    :cond_5d
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-le v0, v1, :cond_6f

    .line 1581
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    .line 1582
    iput v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_5c

    .line 1584
    :cond_6f
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_5c

    .line 1587
    :cond_73
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select is on, but cursor positions are illigal.:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method

.method private setStyledTextSpan(Ljava/lang/Object;II)V
    .registers 9
    .parameter "span"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1670
    const-string v2, "EditStyledText.EditorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- setStyledTextSpan:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1673
    .local v1, min:I
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1674
    .local v0, max:I
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/16 v3, 0x21

    invoke-interface {v2, p1, v1, v0, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1675
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1676
    return-void
.end method

.method private startEdit()V
    .registers 1

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    .line 986
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->showSoftKey()V

    .line 987
    return-void
.end method

.method private unsetSelect()V
    .registers 4

    .prologue
    .line 1594
    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- offSelect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$700(Landroid/view/View;Landroid/text/Spannable;)V

    .line 1598
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    .line 1599
    .local v0, currpos:I
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1, v0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    .line 1600
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1601
    return-void
.end method

.method private waitSelection()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1642
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- waitSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    .line 1645
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ne v0, v1, :cond_1e

    .line 1646
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    .line 1651
    :goto_12
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$800(Landroid/view/View;Landroid/text/Spannable;)V

    .line 1652
    return-void

    .line 1648
    :cond_1e
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_12
.end method


# virtual methods
.method public blockSoftKey()V
    .registers 3

    .prologue
    .line 1830
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- blockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->hideSoftKey()V

    .line 1833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    .line 1834
    return-void
.end method

.method public canPaste()Z
    .registers 2

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getBackgroundColor()I
    .registers 2

    .prologue
    .line 1288
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    return v0
.end method

.method public getColorWaitInput()I
    .registers 2

    .prologue
    .line 1312
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    return v0
.end method

.method public getEditMode()I
    .registers 2

    .prologue
    .line 1292
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    return v0
.end method

.method public getSelectState()I
    .registers 2

    .prologue
    .line 1296
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    return v0
.end method

.method public getSelectionEnd()I
    .registers 2

    .prologue
    .line 1304
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    return v0
.end method

.method public getSelectionStart()I
    .registers 2

    .prologue
    .line 1300
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    return v0
.end method

.method public getSizeWaitInput()I
    .registers 2

    .prologue
    .line 1308
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    return v0
.end method

.method public hideSoftKey()V
    .registers 5

    .prologue
    .line 1815
    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- hidesoftkey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1826
    :goto_f
    return-void

    .line 1820
    :cond_10
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    .line 1821
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    .line 1822
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1825
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    goto :goto_f
.end method

.method public isEditting()Z
    .registers 2

    .prologue
    .line 1263
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    return v0
.end method

.method public isSoftKeyBlocked()Z
    .registers 2

    .prologue
    .line 1280
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return v0
.end method

.method public isStyledText()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1268
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1269
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1270
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    array-length v0, v0

    if-gtz v0, :cond_33

    const-class v0, Landroid/text/style/QuoteSpan;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/QuoteSpan;

    array-length v0, v0

    if-gtz v0, :cond_33

    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    array-length v0, v0

    if-gtz v0, :cond_33

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    const v2, 0xffffff

    if-eq v0, v2, :cond_35

    .line 1274
    :cond_33
    const/4 v0, 0x1

    .line 1276
    :goto_34
    return v0

    :cond_35
    move v0, v1

    goto :goto_34
.end method

.method public isWaitInput()Z
    .registers 2

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    return v0
.end method

.method public onAction(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 974
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(IZ)V

    .line 975
    return-void
.end method

.method public onAction(IZ)V
    .registers 6
    .parameter "mode"
    .parameter "notifyStateChanged"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    .line 979
    if-eqz p2, :cond_10

    .line 980
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 982
    :cond_10
    return-void
.end method

.method public onClearStyles()V
    .registers 3

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    .line 1101
    return-void
.end method

.method public onCursorMoved()V
    .registers 4

    .prologue
    .line 1007
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 1010
    :cond_11
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    .line 1011
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1013
    :cond_1f
    return-void
.end method

.method public onFixSelectedItem()V
    .registers 4

    .prologue
    .line 1034
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onFixSelectedItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->fixSelectionAndDoNextAction()V

    .line 1037
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1038
    return-void
.end method

.method public onRefreshStyles()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 1129
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onRefreshStyles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1132
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1133
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v5

    .line 1134
    const-class v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    invoke-interface {v4, v3, v2, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    .line 1135
    array-length v6, v0

    move v1, v3

    :goto_22
    if-ge v1, v6, :cond_2c

    aget-object v7, v0, v1

    .line 1136
    invoke-virtual {v7, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;->resetWidth(I)V

    .line 1135
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1138
    :cond_2c
    const-class v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    invoke-interface {v4, v3, v2, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    .line 1139
    array-length v5, v1

    move v2, v3

    :goto_36
    if-ge v2, v5, :cond_46

    aget-object v6, v1, v2

    .line 1140
    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->resetColor(I)V

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1143
    :cond_46
    array-length v0, v0

    if-lez v0, :cond_64

    .line 1146
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1148
    :cond_64
    return-void
.end method

.method public onRefreshZeoWidthChar()V
    .registers 5

    .prologue
    .line 1118
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1119
    .local v1, txt:Landroid/text/Editable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 1120
    invoke-interface {v1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2060

    if-ne v2, v3, :cond_1e

    .line 1121
    add-int/lit8 v2, v0, 0x1

    const-string v3, ""

    invoke-interface {v1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1122
    add-int/lit8 v0, v0, -0x1

    .line 1119
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1125
    :cond_21
    return-void
.end method

.method public onStartSelect(Z)V
    .registers 5
    .parameter "notifyStateChanged"

    .prologue
    .line 991
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    .line 994
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    if-nez v0, :cond_1f

    .line 995
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    .line 1000
    :goto_13
    if-eqz p1, :cond_1e

    .line 1001
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1003
    :cond_1e
    return-void

    .line 997
    :cond_1f
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetSelect()V

    .line 998
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    goto :goto_13
.end method

.method public onStartSelectAll(Z)V
    .registers 5
    .parameter "notifyStateChanged"

    .prologue
    .line 1017
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelectAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->handleSelectAll()V

    .line 1020
    if-eqz p1, :cond_15

    .line 1021
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    .line 1023
    :cond_15
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .registers 4
    .parameter "align"

    .prologue
    .line 1187
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 1188
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->changeAlign(Landroid/text/Layout$Alignment;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    .line 1191
    :cond_10
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2
    .parameter "color"

    .prologue
    .line 1151
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    .line 1152
    return-void
.end method

.method public setEndPos(I)V
    .registers 5
    .parameter "pos"

    .prologue
    .line 1621
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- setSelectedEndPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    .line 1624
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelection()V

    .line 1625
    return-void
.end method

.method public setItemColor(IZ)V
    .registers 5
    .parameter "color"
    .parameter "reset"

    .prologue
    .line 1172
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setItemColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitingNextAction()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1175
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    .line 1184
    :cond_f
    :goto_f
    return-void

    .line 1176
    :cond_10
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 1177
    :cond_1a
    const v0, 0xffffff

    if-eq p1, v0, :cond_22

    .line 1178
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->changeColorSelectedText(I)V

    .line 1180
    :cond_22
    if-eqz p2, :cond_f

    .line 1181
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    goto :goto_f
.end method

.method public setItemSize(IZ)V
    .registers 5
    .parameter "size"
    .parameter "reset"

    .prologue
    .line 1156
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setItemSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitingNextAction()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1159
    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    .line 1168
    :cond_f
    :goto_f
    return-void

    .line 1160
    :cond_10
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    .line 1161
    :cond_1a
    if-lez p1, :cond_1f

    .line 1162
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->changeSizeSelectedText(I)V

    .line 1164
    :cond_1f
    if-eqz p2, :cond_f

    .line 1165
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    goto :goto_f
.end method

.method public setMarquee(I)V
    .registers 4
    .parameter "marquee"

    .prologue
    .line 1208
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 1209
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addMarquee(I)V

    .line 1210
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    .line 1212
    :cond_10
    return-void
.end method

.method public setSwing()V
    .registers 3

    .prologue
    .line 1201
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 1202
    :cond_a
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addSwing()V

    .line 1203
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    .line 1205
    :cond_10
    return-void
.end method

.method public setTelop()V
    .registers 3

    .prologue
    .line 1194
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 1195
    :cond_a
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addTelop()V

    .line 1196
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    .line 1198
    :cond_10
    return-void
.end method

.method public setTextComposingMask(II)V
    .registers 11
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1216
    const-string v5, "EditStyledText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- setTextComposingMask:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1219
    .local v4, min:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1221
    .local v3, max:I
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v5

    if-eqz v5, :cond_b5

    iget v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    const v6, 0xffffff

    if-eq v5, v6, :cond_b5

    .line 1222
    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    .line 1226
    .local v1, foregroundColor:I
    :goto_39
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v0

    .line 1228
    .local v0, backgroundColor:I
    const-string v5, "EditStyledText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- fg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",bg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    if-ne v1, v0, :cond_b4

    .line 1234
    const/high16 v5, -0x8000

    const/high16 v6, -0x100

    or-int/2addr v6, v0

    xor-int/lit8 v6, v6, -0x1

    or-int v2, v5, v6

    .line 1235
    .local v2, maskColor:I
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    if-eqz v5, :cond_a0

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v5

    if-eq v5, v2, :cond_a7

    .line 1237
    :cond_a0
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v5, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    .line 1239
    :cond_a7
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    const/16 v7, 0x21

    invoke-interface {v5, v6, v4, v3, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1242
    .end local v2           #maskColor:I
    :cond_b4
    return-void

    .line 1224
    .end local v0           #backgroundColor:I
    .end local v1           #foregroundColor:I
    :cond_b5
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5, v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getForegroundColor(I)I

    move-result v1

    .restart local v1       #foregroundColor:I
    goto/16 :goto_39
.end method

.method public showSoftKey()V
    .registers 3

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->showSoftKey(II)V

    .line 1794
    return-void
.end method

.method public showSoftKey(II)V
    .registers 7
    .parameter "oldSelStart"
    .parameter "oldSelEnd"

    .prologue
    .line 1798
    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- showsoftkey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1811
    :cond_15
    :goto_15
    return-void

    .line 1803
    :cond_16
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    .line 1804
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    .line 1805
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1808
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    if-eqz v1, :cond_15

    .line 1809
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_15
.end method

.method public unblockSoftKey()V
    .registers 3

    .prologue
    .line 1838
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- unblockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    .line 1841
    return-void
.end method

.method public unsetTextComposingMask()V
    .registers 3

    .prologue
    .line 1254
    const-string v0, "EditStyledText"

    const-string v1, "--- unsetTextComposingMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_19

    .line 1257
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    .line 1260
    :cond_19
    return-void
.end method

.method public updateSpanNextToCursor(Landroid/text/Editable;III)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1376
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpanNext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    add-int v3, p2, p4

    .line 1379
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1380
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1381
    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v0, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 1382
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_3f
    if-ge v2, v5, :cond_cb

    aget-object v6, v4, v2

    .line 1383
    instance-of v0, v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_4b

    instance-of v0, v6, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_9e

    .line 1384
    :cond_4b
    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1385
    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 1387
    const-string v0, "EditStyledText.EditorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "spantype:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    instance-of v0, v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_81

    instance-of v0, v6, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_cc

    .line 1391
    :cond_81
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineStart(Landroid/text/Editable;I)I

    move-result v0

    .line 1393
    :goto_8b
    if-ge v0, v7, :cond_96

    if-le p3, p4, :cond_96

    .line 1394
    invoke-interface {p1, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1382
    :cond_92
    :goto_92
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3f

    .line 1395
    :cond_96
    if-le v7, v1, :cond_92

    .line 1396
    const/16 v0, 0x21

    invoke-interface {p1, v6, v1, v8, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_92

    .line 1398
    :cond_9e
    instance-of v0, v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v0, :cond_92

    .line 1399
    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 1402
    if-ne v0, v3, :cond_92

    if-lez v3, :cond_92

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_92

    .line 1403
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v6, "\n"

    invoke-interface {v0, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1404
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0, v3}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(I)V

    goto :goto_92

    .line 1408
    :cond_cb
    return-void

    :cond_cc
    move v0, v1

    goto :goto_8b
.end method

.method public updateSpanPreviousFromCursor(Landroid/text/Editable;III)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1323
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpanPrevious:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    add-int v4, p2, p4

    .line 1326
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1327
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1328
    const-class v1, Ljava/lang/Object;

    invoke-interface {p1, v0, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1329
    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_3f
    if-ge v3, v6, :cond_e4

    aget-object v7, v5, v3

    .line 1330
    instance-of v0, v7, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_53

    instance-of v0, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_53

    instance-of v0, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_53

    instance-of v0, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_ab

    .line 1332
    :cond_53
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 1333
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1335
    const-string v0, "EditStyledText.EditorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "spantype:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    instance-of v0, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_89

    instance-of v0, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_a5

    .line 1340
    :cond_89
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineEnd(Landroid/text/Editable;I)I

    move-result v0

    .line 1346
    :goto_93
    if-ge v1, v0, :cond_a1

    .line 1348
    const-string v1, "EditStyledText.EditorManager"

    const-string v9, "updateSpanPrevious: extend span"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/16 v1, 0x21

    invoke-interface {p1, v7, v8, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1329
    :cond_a1
    :goto_a1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3f

    .line 1342
    :cond_a5
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    if-eqz v0, :cond_e5

    move v0, v1

    .line 1343
    goto :goto_93

    .line 1353
    :cond_ab
    instance-of v0, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v0, :cond_a1

    .line 1354
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 1355
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 1356
    if-le p3, p4, :cond_c2

    .line 1360
    const-string v8, ""

    invoke-interface {p1, v0, v1, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1361
    invoke-interface {p1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_a1

    .line 1365
    :cond_c2
    if-ne v1, v4, :cond_a1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v4, v0, :cond_a1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a1

    .line 1367
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_a1

    .line 1372
    :cond_e4
    return-void

    :cond_e5
    move v0, v2

    goto :goto_93
.end method
