.class public Lcom/android/providers/contacts/PostalSplitter;
.super Ljava/lang/Object;
.source "PostalSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/PostalSplitter$Postal;
    }
.end annotation


# static fields
.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/PostalSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 2
    .parameter "locale"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    .line 64
    return-void
.end method

.method private static arePrintableAsciiOnly([Ljava/lang/String;)Z
    .registers 7
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 232
    if-nez p0, :cond_4

    .line 243
    :cond_3
    :goto_3
    return v4

    .line 235
    :cond_4
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_7
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 236
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 235
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 239
    :cond_14
    invoke-static {v3}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 240
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private joinEnUs(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .registers 16
    .parameter "postal"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 166
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c7

    move v9, v11

    .line 167
    .local v9, hasStreet:Z
    :goto_b
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_ca

    move v5, v11

    .line 168
    .local v5, hasPobox:Z
    :goto_14
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_cd

    move v4, v11

    .line 169
    .local v4, hasNeighborhood:Z
    :goto_1d
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d0

    move v1, v11

    .line 170
    .local v1, hasCity:Z
    :goto_26
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d3

    move v7, v11

    .line 171
    .local v7, hasRegion:Z
    :goto_2f
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d6

    move v6, v11

    .line 172
    .local v6, hasPostcode:Z
    :goto_38
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d9

    move v2, v11

    .line 178
    .local v2, hasCountry:Z
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, builder:Ljava/lang/StringBuilder;
    if-nez v9, :cond_4c

    if-nez v5, :cond_4c

    if-eqz v4, :cond_dc

    :cond_4c
    move v3, v11

    .line 181
    .local v3, hasFirstBlock:Z
    :goto_4d
    if-nez v1, :cond_53

    if-nez v7, :cond_53

    if-eqz v6, :cond_df

    :cond_53
    move v8, v11

    .line 182
    .local v8, hasSecondBlock:Z
    :goto_54
    move v10, v2

    .line 184
    .local v10, hasThirdBlock:Z
    if-eqz v3, :cond_7c

    .line 185
    if-eqz v9, :cond_5e

    .line 186
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_5e
    if-eqz v5, :cond_6c

    .line 189
    if-eqz v9, :cond_67

    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_67
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_6c
    if-eqz v4, :cond_7c

    .line 193
    if-nez v9, :cond_72

    if-eqz v5, :cond_77

    :cond_72
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_77
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_7c
    if-eqz v8, :cond_aa

    .line 199
    if-eqz v3, :cond_85

    .line 200
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_85
    if-eqz v1, :cond_8c

    .line 203
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_8c
    if-eqz v7, :cond_9a

    .line 206
    if-eqz v1, :cond_95

    const-string v11, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_95
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_9a
    if-eqz v6, :cond_aa

    .line 210
    if-nez v1, :cond_a0

    if-eqz v7, :cond_a5

    :cond_a0
    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_a5
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_aa
    if-eqz v10, :cond_bc

    .line 216
    if-nez v3, :cond_b0

    if-eqz v8, :cond_b5

    .line 217
    :cond_b0
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_b5
    if-eqz v2, :cond_bc

    .line 220
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_bc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_e2

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 227
    :goto_c6
    return-object v11

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #hasCity:Z
    .end local v2           #hasCountry:Z
    .end local v3           #hasFirstBlock:Z
    .end local v4           #hasNeighborhood:Z
    .end local v5           #hasPobox:Z
    .end local v6           #hasPostcode:Z
    .end local v7           #hasRegion:Z
    .end local v8           #hasSecondBlock:Z
    .end local v9           #hasStreet:Z
    .end local v10           #hasThirdBlock:Z
    :cond_c7
    move v9, v12

    .line 166
    goto/16 :goto_b

    .restart local v9       #hasStreet:Z
    :cond_ca
    move v5, v12

    .line 167
    goto/16 :goto_14

    .restart local v5       #hasPobox:Z
    :cond_cd
    move v4, v12

    .line 168
    goto/16 :goto_1d

    .restart local v4       #hasNeighborhood:Z
    :cond_d0
    move v1, v12

    .line 169
    goto/16 :goto_26

    .restart local v1       #hasCity:Z
    :cond_d3
    move v7, v12

    .line 170
    goto/16 :goto_2f

    .restart local v7       #hasRegion:Z
    :cond_d6
    move v6, v12

    .line 171
    goto/16 :goto_38

    .restart local v6       #hasPostcode:Z
    :cond_d9
    move v2, v12

    .line 172
    goto/16 :goto_41

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #hasCountry:Z
    :cond_dc
    move v3, v12

    .line 180
    goto/16 :goto_4d

    .restart local v3       #hasFirstBlock:Z
    :cond_df
    move v8, v12

    .line 181
    goto/16 :goto_54

    .line 227
    .restart local v8       #hasSecondBlock:Z
    .restart local v10       #hasThirdBlock:Z
    :cond_e2
    const/4 v11, 0x0

    goto :goto_c6
.end method

.method private joinJaJp(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .registers 16
    .parameter "postal"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 100
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c7

    move v9, v11

    .line 101
    .local v9, hasStreet:Z
    :goto_b
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_ca

    move v5, v11

    .line 102
    .local v5, hasPobox:Z
    :goto_14
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_cd

    move v4, v11

    .line 103
    .local v4, hasNeighborhood:Z
    :goto_1d
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d0

    move v1, v11

    .line 104
    .local v1, hasCity:Z
    :goto_26
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d3

    move v7, v11

    .line 105
    .local v7, hasRegion:Z
    :goto_2f
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d6

    move v6, v11

    .line 106
    .local v6, hasPostcode:Z
    :goto_38
    iget-object v13, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d9

    move v2, v11

    .line 112
    .local v2, hasCountry:Z
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, builder:Ljava/lang/StringBuilder;
    if-nez v2, :cond_4a

    if-eqz v6, :cond_dc

    :cond_4a
    move v3, v11

    .line 115
    .local v3, hasFirstBlock:Z
    :goto_4b
    if-nez v7, :cond_51

    if-nez v1, :cond_51

    if-eqz v4, :cond_df

    :cond_51
    move v8, v11

    .line 116
    .local v8, hasSecondBlock:Z
    :goto_52
    if-nez v9, :cond_56

    if-eqz v5, :cond_e2

    :cond_56
    move v10, v11

    .line 118
    .local v10, hasThirdBlock:Z
    :goto_57
    if-eqz v3, :cond_6e

    .line 119
    if-eqz v2, :cond_60

    .line 120
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_60
    if-eqz v6, :cond_6e

    .line 123
    if-eqz v2, :cond_69

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_69
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_6e
    if-eqz v8, :cond_9c

    .line 129
    if-eqz v3, :cond_77

    .line 130
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_77
    if-eqz v7, :cond_7e

    .line 133
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_7e
    if-eqz v1, :cond_8c

    .line 136
    if-eqz v7, :cond_87

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_87
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_8c
    if-eqz v4, :cond_9c

    .line 140
    if-nez v7, :cond_92

    if-eqz v1, :cond_97

    :cond_92
    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_97
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_9c
    if-eqz v10, :cond_bc

    .line 146
    if-nez v3, :cond_a2

    if-eqz v8, :cond_a7

    .line 147
    :cond_a2
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_a7
    if-eqz v9, :cond_ae

    .line 150
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_ae
    if-eqz v5, :cond_bc

    .line 153
    if-eqz v9, :cond_b7

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_b7
    iget-object v11, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_bc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_e5

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 161
    :goto_c6
    return-object v11

    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #hasCity:Z
    .end local v2           #hasCountry:Z
    .end local v3           #hasFirstBlock:Z
    .end local v4           #hasNeighborhood:Z
    .end local v5           #hasPobox:Z
    .end local v6           #hasPostcode:Z
    .end local v7           #hasRegion:Z
    .end local v8           #hasSecondBlock:Z
    .end local v9           #hasStreet:Z
    .end local v10           #hasThirdBlock:Z
    :cond_c7
    move v9, v12

    .line 100
    goto/16 :goto_b

    .restart local v9       #hasStreet:Z
    :cond_ca
    move v5, v12

    .line 101
    goto/16 :goto_14

    .restart local v5       #hasPobox:Z
    :cond_cd
    move v4, v12

    .line 102
    goto/16 :goto_1d

    .restart local v4       #hasNeighborhood:Z
    :cond_d0
    move v1, v12

    .line 103
    goto/16 :goto_26

    .restart local v1       #hasCity:Z
    :cond_d3
    move v7, v12

    .line 104
    goto/16 :goto_2f

    .restart local v7       #hasRegion:Z
    :cond_d6
    move v6, v12

    .line 105
    goto/16 :goto_38

    .restart local v6       #hasPostcode:Z
    :cond_d9
    move v2, v12

    .line 106
    goto/16 :goto_41

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #hasCountry:Z
    :cond_dc
    move v3, v12

    .line 114
    goto/16 :goto_4b

    .restart local v3       #hasFirstBlock:Z
    :cond_df
    move v8, v12

    .line 115
    goto/16 :goto_52

    .restart local v8       #hasSecondBlock:Z
    :cond_e2
    move v10, v12

    .line 116
    goto/16 :goto_57

    .line 161
    .restart local v10       #hasThirdBlock:Z
    :cond_e5
    const/4 v11, 0x0

    goto :goto_c6
.end method


# virtual methods
.method public join(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;
    .registers 5
    .parameter "postal"

    .prologue
    .line 85
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->pobox:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->neighborhood:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->city:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->region:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->postcode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->country:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 90
    .local v0, values:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_43

    sget-object v1, Lcom/android/providers/contacts/PostalSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/PostalSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-static {v0}, Lcom/android/providers/contacts/PostalSplitter;->arePrintableAsciiOnly([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 93
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->joinJaJp(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :goto_42
    return-object v1

    :cond_43
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PostalSplitter;->joinEnUs(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v1

    goto :goto_42
.end method

.method public split(Lcom/android/providers/contacts/PostalSplitter$Postal;Ljava/lang/String;)V
    .registers 4
    .parameter "postal"
    .parameter "formattedAddress"

    .prologue
    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 72
    iput-object p2, p1, Lcom/android/providers/contacts/PostalSplitter$Postal;->street:Ljava/lang/String;

    .line 74
    :cond_8
    return-void
.end method
