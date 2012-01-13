.class public Lcom/android/vcard/VCardEntry$SipData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SipData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mType:I


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .registers 6
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1367
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1369
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1370
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1371
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1372
    const-string v1, "data2"

    iget v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1373
    iget v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    if-nez v1, :cond_2f

    .line 1374
    const-string v1, "data3"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1376
    :cond_2f
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eqz v1, :cond_3e

    .line 1377
    const-string v1, "is_primary"

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1379
    :cond_3e
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1389
    if-ne p0, p1, :cond_5

    .line 1396
    :cond_4
    :goto_4
    return v1

    .line 1392
    :cond_5
    instance-of v3, p1, Lcom/android/vcard/VCardEntry$SipData;

    if-nez v3, :cond_b

    move v1, v2

    .line 1393
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 1395
    check-cast v0, Lcom/android/vcard/VCardEntry$SipData;

    .line 1396
    .local v0, sipData:Lcom/android/vcard/VCardEntry$SipData;
    iget v3, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    iget v4, v0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eq v3, v4, :cond_4

    :cond_2e
    move v1, v2

    goto :goto_4
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .registers 2

    .prologue
    .line 1418
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1404
    iget v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    .line 1405
    .local v0, hash:I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int v0, v3, v1

    .line 1406
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_1d

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1d
    add-int v0, v1, v2

    .line 1407
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eqz v1, :cond_2c

    const/16 v1, 0x4cf

    :goto_27
    add-int v0, v2, v1

    .line 1408
    return v0

    :cond_2a
    move v1, v2

    .line 1405
    goto :goto_f

    .line 1407
    :cond_2c
    const/16 v1, 0x4d5

    goto :goto_27
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
