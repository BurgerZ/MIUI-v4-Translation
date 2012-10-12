.class public abstract Lcom/android/providers/contacts/t9/h;
.super Ljava/lang/Object;
.source "T9Utils.java"


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field private static final eE:[C

.field private static final eF:[C

.field private static final eG:[C

.field public static final eH:I

.field public static final eI:[Ljava/lang/String;

.field public static final eJ:[Ljava/lang/String;

.field public static eK:Landroid/content/Context;

.field public static eL:Landroid/database/sqlite/SQLiteDatabase;

.field public static eM:Landroid/database/sqlite/SQLiteStatement;

.field public static eN:Landroid/database/sqlite/SQLiteStatement;

.field public static eO:Landroid/database/sqlite/SQLiteStatement;

.field public static eP:Landroid/database/sqlite/SQLiteStatement;

.field public static eQ:Landroid/database/sqlite/SQLiteStatement;

.field public static eR:Landroid/database/sqlite/SQLiteStatement;

.field public static eS:Z

.field private static eT:Lmiui/util/SimplePool$PoolInstance;

.field private static eU:Lmiui/util/SimplePool$PoolInstance;

.field private static eV:Lmiui/util/SimplePool$PoolInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 28
    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eE:[C

    .line 36
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eF:[C

    .line 49
    const/16 v0, 0x25

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eG:[C

    .line 58
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eE:[C

    array-length v0, v0

    sput v0, Lcom/android/providers/contacts/t9/h;->eH:I

    .line 67
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_id"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    const-string v1, "data"

    aput-object v1, v0, v7

    const-string v1, "normalized_data"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "t9_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "display_string"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "key_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/t9/h;->COLUMNS:[Ljava/lang/String;

    .line 112
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eI:[Ljava/lang/String;

    .line 116
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DROP TABLE IF EXISTS t9_lookup"

    aput-object v1, v0, v5

    const-string v1, "CREATE TABLE t9_lookup (data_id INTEGER NOT NULL DEFAULT 0,contact_id INTEGER NOT NULL DEFAULT 0,raw_contact_id INTEGER NOT NULL DEFAULT 0,data TEXT NOT NULL,normalized_data TEXT NOT NULL,display_name TEXT NOT NULL,photo_id INTEGER NOT NULL,times_contacted INTEGER NOT NULL DEFAULT 0,t9_key TEXT NOT NULL,display_string TEXT DEFAULT NULL,key_type INTEGER NOT NULL DEFAULT 0,UNIQUE(data_id))"

    aput-object v1, v0, v6

    const-string v1, "CREATE INDEX t9_lookup_raw_contact_id ON t9_lookup (raw_contact_id)"

    aput-object v1, v0, v3

    const-string v1, "CREATE INDEX t9_lookup_contact_id ON t9_lookup (contact_id)"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eJ:[Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/android/providers/contacts/t9/h;->bp()Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/t9/h;->eS:Z

    .line 173
    new-instance v0, Lcom/android/providers/contacts/t9/n;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/n;-><init>()V

    invoke-static {v0, v3}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eT:Lmiui/util/SimplePool$PoolInstance;

    .line 184
    new-instance v0, Lcom/android/providers/contacts/t9/o;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/o;-><init>()V

    invoke-static {v0, v4}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eU:Lmiui/util/SimplePool$PoolInstance;

    .line 195
    new-instance v0, Lcom/android/providers/contacts/t9/p;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/p;-><init>()V

    invoke-static {v0, v3}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eV:Lmiui/util/SimplePool$PoolInstance;

    return-void

    .line 28
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2at 0x0t
        0x23t 0x0t
    .end array-data

    .line 36
    :array_1
    .array-data 0x2
        0x32t 0x0t
        0x32t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
        0x39t 0x0t
    .end array-data

    .line 49
    :array_2
    .array-data 0x2
        0x31t 0x0t
        0x34t 0x0t
        0x37t 0x0t
        0x2at 0x0t
        0x31t 0x0t
        0x34t 0x0t
        0x37t 0x0t
        0x2at 0x0t
        0x32t 0x0t
        0x35t 0x0t
        0x38t 0x0t
        0x32t 0x0t
        0x35t 0x0t
        0x38t 0x0t
        0x33t 0x0t
        0x36t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x33t 0x0t
        0x36t 0x0t
        0x39t 0x0t
        0x31t 0x0t
        0x34t 0x0t
        0x37t 0x0t
        0x2at 0x0t
        0x32t 0x0t
        0x35t 0x0t
        0x38t 0x0t
        0x38t 0x0t
        0x33t 0x0t
        0x36t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x33t 0x0t
        0x36t 0x0t
        0x39t 0x0t
        0x23t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static M(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    .line 286
    :goto_0
    if-ge v1, v2, :cond_1

    .line 287
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/providers/contacts/t9/h;->a(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    :goto_1
    return v0

    .line 286
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 208
    sput-object p0, Lcom/android/providers/contacts/t9/h;->eK:Landroid/content/Context;

    .line 209
    sput-object p1, Lcom/android/providers/contacts/t9/h;->eL:Landroid/database/sqlite/SQLiteDatabase;

    .line 211
    invoke-static {}, Lcom/android/providers/contacts/m;->J()Lcom/android/providers/contacts/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/m;->K()J

    move-result-wide v0

    .line 212
    invoke-static {}, Lcom/android/providers/contacts/m;->J()Lcom/android/providers/contacts/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/contacts/m;->L()J

    move-result-wide v2

    .line 213
    sget-object v4, Lcom/android/providers/contacts/t9/h;->eI:[Ljava/lang/String;

    sget-object v5, Lcom/android/providers/contacts/aJ;->kk:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 214
    sget-object v4, Lcom/android/providers/contacts/t9/h;->eI:[Ljava/lang/String;

    sget-object v5, Lcom/android/providers/contacts/aJ;->kl:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 215
    sget-object v4, Lcom/android/providers/contacts/t9/h;->eI:[Ljava/lang/String;

    sget-object v5, Lcom/android/providers/contacts/aJ;->km:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 216
    sget-object v4, Lcom/android/providers/contacts/t9/h;->eI:[Ljava/lang/String;

    const/4 v5, 0x3

    sget-object v6, Lcom/android/providers/contacts/aJ;->kn:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 218
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eM:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eM:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 221
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eL:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT OR IGNORE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,display_name,photo_id,times_contacted,t9_key,display_string,key_type) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eM:Landroid/database/sqlite/SQLiteStatement;

    .line 223
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eN:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eN:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 226
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eL:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET photo_id=? WHERE contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eN:Landroid/database/sqlite/SQLiteStatement;

    .line 229
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eO:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_2

    .line 230
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eO:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 232
    :cond_2
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eL:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET times_contacted=(times_contacted + 1) WHERE contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eO:Landroid/database/sqlite/SQLiteStatement;

    .line 237
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eP:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_3

    .line 238
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eP:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 240
    :cond_3
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eL:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM t9_lookup WHERE raw_contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eP:Landroid/database/sqlite/SQLiteStatement;

    .line 243
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eQ:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_4

    .line 244
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eQ:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 246
    :cond_4
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eL:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM t9_lookup WHERE contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eQ:Landroid/database/sqlite/SQLiteStatement;

    .line 249
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eR:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_5

    .line 250
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eR:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 252
    :cond_5
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eL:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM t9_lookup WHERE data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/h;->eR:Landroid/database/sqlite/SQLiteStatement;

    .line 254
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 370
    const-string v0, "T9"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 277
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eV:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0, p0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public static a(Ljava/util/BitSet;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eT:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0, p0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public static a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 281
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(C)C
    .locals 8
    .parameter "c"

    .prologue
    const/16 v7, 0x61

    const/16 v6, 0x41

    .line 90
    if-lt p0, v6, :cond_0

    const/16 v5, 0x5a

    if-gt p0, v5, :cond_0

    .line 861
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eF:[C

    .line 93
    .local v0, ac:[C
    sub-int v3, p0, v6

    .line 94
    .local v3, i:I
    aget-char v2, v0, v3

    .line 139
    .end local v0           #ac:[C
    .end local v3           #i:I
    .local v2, c1:C
    :goto_0
    return v2

    .line 96
    .end local v2           #c1:C
    :cond_0
    if-lt p0, v7, :cond_1

    const/16 v5, 0x7a

    if-gt p0, v5, :cond_1

    .line 98
    sget-object v1, Lcom/android/providers/contacts/t9/h;->eF:[C

    .line 99
    .local v1, ac1:[C
    sub-int v4, p0, v7

    .line 100
    .local v4, j:I
    aget-char v2, v1, v4

    .restart local v2       #c1:C
    goto :goto_0

    .line 102
    .end local v1           #ac1:[C
    .end local v2           #c1:C
    .end local v4           #j:I
    :cond_1
    const/16 v5, 0x30

    if-lt p0, v5, :cond_2

    const/16 v5, 0x39

    if-gt p0, v5, :cond_2

    .line 103
    move v2, p0

    .restart local v2       #c1:C
    goto :goto_0

    .line 109
    .end local v2           #c1:C
    :cond_2
    const/16 v5, 0x3131

    if-ne p0, v5, :cond_3

    .line 111
    const/16 v2, 0x31

    .restart local v2       #c1:C
    goto :goto_0

    .line 109
    .end local v2           #c1:C
    :cond_3
    const/16 v5, 0x314b

    if-ne p0, v5, :cond_4

    .line 111
    const/16 v2, 0x31

    .restart local v2       #c1:C
    goto :goto_0

    .line 109
    .end local v2           #c1:C
    :cond_4
    const/16 v5, 0xc0

    if-lt p0, v5, :cond_5

    const/16 v5, 0xc7

    if-gt p0, v5, :cond_5

    .line 111
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_0

    .line 105
    .end local v2           #c1:C
    :cond_5
    const/16 v5, 0xe0

    if-lt p0, v5, :cond_6

    const/16 v5, 0xe7

    if-gt p0, v5, :cond_6

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_6
    const/16 v5, 0x100

    if-lt p0, v5, :cond_7

    const/16 v5, 0x10d

    if-gt p0, v5, :cond_7

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_7
    const/16 v5, 0x180

    if-lt p0, v5, :cond_8

    const/16 v5, 0x188

    if-gt p0, v5, :cond_8

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_8
    const/16 v5, 0x1cd

    if-lt p0, v5, :cond_9

    const/16 v5, 0x1ce

    if-gt p0, v5, :cond_9

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_9
    const/16 v5, 0x386

    if-ne p0, v5, :cond_a

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_a
    const/16 v5, 0x391

    if-lt p0, v5, :cond_b

    const/16 v5, 0x393

    if-gt p0, v5, :cond_b

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_b
    const/16 v5, 0x3ac

    if-ne p0, v5, :cond_c

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_c
    const/16 v5, 0x3b1

    if-lt p0, v5, :cond_d

    const/16 v5, 0x3b3

    if-gt p0, v5, :cond_d

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_d
    const/16 v5, 0x410

    if-lt p0, v5, :cond_e

    const/16 v5, 0x413

    if-gt p0, v5, :cond_e

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_e
    const/16 v5, 0x430

    if-lt p0, v5, :cond_f

    const/16 v5, 0x433

    if-gt p0, v5, :cond_f

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_f
    const/16 v5, 0x490

    if-lt p0, v5, :cond_10

    const/16 v5, 0x491

    if-gt p0, v5, :cond_10

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_10
    const/16 v5, 0x1ea0

    if-lt p0, v5, :cond_11

    const/16 v5, 0x1eb7

    if-gt p0, v5, :cond_11

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_11
    const/16 v5, 0x3134

    if-ne p0, v5, :cond_12

    .line 107
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 109
    .end local v2           #c1:C
    :cond_12
    const/16 v5, 0x628

    if-lt p0, v5, :cond_13

    const/16 v5, 0x62b

    if-gt p0, v5, :cond_13

    .line 111
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 109
    .end local v2           #c1:C
    :cond_13
    const/16 v5, 0x67e

    if-ne p0, v5, :cond_14

    .line 111
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 109
    .end local v2           #c1:C
    :cond_14
    const/16 v5, 0x5d3

    if-lt p0, v5, :cond_15

    const/16 v5, 0x5d5

    if-gt p0, v5, :cond_15

    .line 111
    const/16 v2, 0x32

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_15
    const/16 v5, 0xc8

    if-lt p0, v5, :cond_16

    const/16 v5, 0xcb

    if-gt p0, v5, :cond_16

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_16
    const/16 v5, 0xe8

    if-lt p0, v5, :cond_17

    const/16 v5, 0xeb

    if-gt p0, v5, :cond_17

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_17
    const/16 v5, 0x10e

    if-lt p0, v5, :cond_18

    const/16 v5, 0x11b

    if-gt p0, v5, :cond_18

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_18
    const/16 v5, 0x189

    if-lt p0, v5, :cond_19

    const/16 v5, 0x192

    if-gt p0, v5, :cond_19

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_19
    const/16 v5, 0x394

    if-lt p0, v5, :cond_1a

    const/16 v5, 0x396

    if-gt p0, v5, :cond_1a

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_1a
    const/16 v5, 0x3ad

    if-ne p0, v5, :cond_1b

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_1b
    const/16 v5, 0x3b4

    if-lt p0, v5, :cond_1c

    const/16 v5, 0x3b6

    if-gt p0, v5, :cond_1c

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_1c
    const/16 v5, 0x401

    if-lt p0, v5, :cond_1d

    const/16 v5, 0x402

    if-gt p0, v5, :cond_1d

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_1d
    const/16 v5, 0x451

    if-lt p0, v5, :cond_1e

    const/16 v5, 0x452

    if-gt p0, v5, :cond_1e

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_1e
    const/16 v5, 0x404

    if-ne p0, v5, :cond_1f

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_1f
    const/16 v5, 0x454

    if-ne p0, v5, :cond_20

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_20
    const/16 v5, 0x414

    if-lt p0, v5, :cond_21

    const/16 v5, 0x417

    if-gt p0, v5, :cond_21

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_21
    const/16 v5, 0x434

    if-lt p0, v5, :cond_22

    const/16 v5, 0x437

    if-gt p0, v5, :cond_22

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_22
    const/16 v5, 0x1eb8

    if-lt p0, v5, :cond_23

    const/16 v5, 0x1ec7

    if-gt p0, v5, :cond_23

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_23
    const/16 v5, 0x3137

    if-ne p0, v5, :cond_24

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_24
    const/16 v5, 0x314c

    if-ne p0, v5, :cond_25

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_25
    const/16 v5, 0x627

    if-ne p0, v5, :cond_26

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 105
    .end local v2           #c1:C
    :cond_26
    const/16 v5, 0x621

    if-lt p0, v5, :cond_27

    const/16 v5, 0x623

    if-gt p0, v5, :cond_27

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 105
    .end local v2           #c1:C
    :cond_27
    const/16 v5, 0x625

    if-ne p0, v5, :cond_28

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 105
    .end local v2           #c1:C
    :cond_28
    const/16 v5, 0x649

    if-ne p0, v5, :cond_29

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_29
    const/16 v5, 0x5d0

    if-lt p0, v5, :cond_2a

    const/16 v5, 0x5d2

    if-gt p0, v5, :cond_2a

    .line 107
    const/16 v2, 0x33

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_2a
    const/16 v5, 0xcc

    if-lt p0, v5, :cond_2b

    const/16 v5, 0xcf

    if-gt p0, v5, :cond_2b

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_2b
    const/16 v5, 0xec

    if-lt p0, v5, :cond_2c

    const/16 v5, 0xef

    if-gt p0, v5, :cond_2c

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_2c
    const/16 v5, 0x11c

    if-lt p0, v5, :cond_2d

    const/16 v5, 0x133

    if-gt p0, v5, :cond_2d

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_2d
    const/16 v5, 0x193

    if-lt p0, v5, :cond_2e

    const/16 v5, 0x197

    if-gt p0, v5, :cond_2e

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_2e
    const/16 v5, 0x1cf

    if-lt p0, v5, :cond_2f

    const/16 v5, 0x1d0

    if-gt p0, v5, :cond_2f

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_2f
    const/16 v5, 0x396

    if-lt p0, v5, :cond_30

    const/16 v5, 0x399

    if-gt p0, v5, :cond_30

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_30
    const/16 v5, 0x3aa

    if-ne p0, v5, :cond_31

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_31
    const/16 v5, 0x3ae

    if-lt p0, v5, :cond_32

    const/16 v5, 0x3af

    if-gt p0, v5, :cond_32

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_32
    const/16 v5, 0x3b7

    if-lt p0, v5, :cond_33

    const/16 v5, 0x3b9

    if-gt p0, v5, :cond_33

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_33
    const/16 v5, 0x3ca

    if-ne p0, v5, :cond_34

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_34
    const/16 v5, 0x406

    if-lt p0, v5, :cond_35

    const/16 v5, 0x408

    if-gt p0, v5, :cond_35

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_35
    const/16 v5, 0x418

    if-lt p0, v5, :cond_36

    const/16 v5, 0x41b

    if-gt p0, v5, :cond_36

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_36
    const/16 v5, 0x438

    if-lt p0, v5, :cond_37

    const/16 v5, 0x43b

    if-gt p0, v5, :cond_37

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_37
    const/16 v5, 0x456

    if-lt p0, v5, :cond_38

    const/16 v5, 0x458

    if-gt p0, v5, :cond_38

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_38
    const/16 v5, 0x1ec8

    if-lt p0, v5, :cond_39

    const/16 v5, 0x1ecb

    if-gt p0, v5, :cond_39

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_39
    const/16 v5, 0x3139

    if-ne p0, v5, :cond_3a

    .line 119
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 109
    .end local v2           #c1:C
    :cond_3a
    const/16 v5, 0x633

    if-lt p0, v5, :cond_3b

    const/16 v5, 0x636

    if-gt p0, v5, :cond_3b

    .line 123
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 121
    .end local v2           #c1:C
    :cond_3b
    const/16 v5, 0x5dd

    if-lt p0, v5, :cond_3c

    const/16 v5, 0x5e0

    if-gt p0, v5, :cond_3c

    .line 123
    const/16 v2, 0x34

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_3c
    const/16 v5, 0x134

    if-lt p0, v5, :cond_3d

    const/16 v5, 0x142

    if-gt p0, v5, :cond_3d

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_3d
    const/16 v5, 0x198

    if-lt p0, v5, :cond_3e

    const/16 v5, 0x19b

    if-gt p0, v5, :cond_3e

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_3e
    const/16 v5, 0x39a

    if-lt p0, v5, :cond_3f

    const/16 v5, 0x39c

    if-gt p0, v5, :cond_3f

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_3f
    const/16 v5, 0x3ba

    if-lt p0, v5, :cond_40

    const/16 v5, 0x3bc

    if-gt p0, v5, :cond_40

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_40
    const/16 v5, 0x41c

    if-lt p0, v5, :cond_41

    const/16 v5, 0x41f

    if-gt p0, v5, :cond_41

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_41
    const/16 v5, 0x43c

    if-lt p0, v5, :cond_42

    const/16 v5, 0x43f

    if-gt p0, v5, :cond_42

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_42
    const/16 v5, 0x3141

    if-ne p0, v5, :cond_43

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_43
    const/16 v5, 0x62f

    if-lt p0, v5, :cond_44

    const/16 v5, 0x632

    if-gt p0, v5, :cond_44

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_44
    const/16 v5, 0x698

    if-ne p0, v5, :cond_45

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 117
    .end local v2           #c1:C
    :cond_45
    const/16 v5, 0x5d9

    if-lt p0, v5, :cond_46

    const/16 v5, 0x5dc

    if-gt p0, v5, :cond_46

    .line 119
    const/16 v2, 0x35

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_46
    const/16 v5, 0xd1

    if-lt p0, v5, :cond_47

    const/16 v5, 0xd8

    if-gt p0, v5, :cond_47

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_47
    const/16 v5, 0xf1

    if-lt p0, v5, :cond_48

    const/16 v5, 0xf8

    if-gt p0, v5, :cond_48

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_48
    const/16 v5, 0x143

    if-lt p0, v5, :cond_49

    const/16 v5, 0x153

    if-gt p0, v5, :cond_49

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_49
    const/16 v5, 0x19c

    if-lt p0, v5, :cond_4a

    const/16 v5, 0x1a3

    if-gt p0, v5, :cond_4a

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_4a
    const/16 v5, 0x38c

    if-ne p0, v5, :cond_4b

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_4b
    const/16 v5, 0x39d

    if-lt p0, v5, :cond_4c

    const/16 v5, 0x39f

    if-gt p0, v5, :cond_4c

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_4c
    const/16 v5, 0x3bd

    if-lt p0, v5, :cond_4d

    const/16 v5, 0x3bf

    if-gt p0, v5, :cond_4d

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_4d
    const/16 v5, 0x3cc

    if-ne p0, v5, :cond_4e

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_4e
    const/16 v5, 0x420

    if-lt p0, v5, :cond_4f

    const/16 v5, 0x423

    if-gt p0, v5, :cond_4f

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_4f
    const/16 v5, 0x440

    if-lt p0, v5, :cond_50

    const/16 v5, 0x443

    if-gt p0, v5, :cond_50

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_50
    const/16 v5, 0x1ecc

    if-lt p0, v5, :cond_51

    const/16 v5, 0x1ee3

    if-gt p0, v5, :cond_51

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_51
    const/16 v5, 0x3142

    if-ne p0, v5, :cond_52

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_52
    const/16 v5, 0x314d

    if-ne p0, v5, :cond_53

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_53
    const/16 v5, 0x62c

    if-lt p0, v5, :cond_54

    const/16 v5, 0x62e

    if-gt p0, v5, :cond_54

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_54
    const/16 v5, 0x686

    if-ne p0, v5, :cond_55

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_55
    const/16 v5, 0x5d6

    if-lt p0, v5, :cond_56

    const/16 v5, 0x5d8

    if-gt p0, v5, :cond_56

    .line 115
    const/16 v2, 0x36

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 113
    .end local v2           #c1:C
    :cond_56
    const/16 v5, 0xdf

    if-ne p0, v5, :cond_57

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_57
    const/16 v5, 0x154

    if-lt p0, v5, :cond_58

    const/16 v5, 0x161

    if-gt p0, v5, :cond_58

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_58
    const/16 v5, 0x1a4

    if-lt p0, v5, :cond_59

    const/16 v5, 0x1aa

    if-gt p0, v5, :cond_59

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_59
    const/16 v5, 0x3a0

    if-lt p0, v5, :cond_5a

    const/16 v5, 0x3a3

    if-gt p0, v5, :cond_5a

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_5a
    const/16 v5, 0x3c0

    if-lt p0, v5, :cond_5b

    const/16 v5, 0x3c3

    if-gt p0, v5, :cond_5b

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_5b
    const/16 v5, 0x424

    if-lt p0, v5, :cond_5c

    const/16 v5, 0x427

    if-gt p0, v5, :cond_5c

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_5c
    const/16 v5, 0x444

    if-lt p0, v5, :cond_5d

    const/16 v5, 0x447

    if-gt p0, v5, :cond_5d

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_5d
    const/16 v5, 0x3145

    if-ne p0, v5, :cond_5e

    .line 115
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_5e
    const/16 v5, 0x646

    if-lt p0, v5, :cond_5f

    const/16 v5, 0x648

    if-gt p0, v5, :cond_5f

    .line 135
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_5f
    const/16 v5, 0x6cc

    if-ne p0, v5, :cond_60

    .line 135
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_60
    const/16 v5, 0x64a

    if-ne p0, v5, :cond_61

    .line 135
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_61
    const/16 v5, 0x624

    if-ne p0, v5, :cond_62

    .line 135
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_62
    const/16 v5, 0x626

    if-ne p0, v5, :cond_63

    .line 135
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_63
    const/16 v5, 0x5e8

    if-lt p0, v5, :cond_64

    const/16 v5, 0x5ea

    if-gt p0, v5, :cond_64

    .line 135
    const/16 v2, 0x37

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 133
    .end local v2           #c1:C
    :cond_64
    const/16 v5, 0xd9

    if-lt p0, v5, :cond_65

    const/16 v5, 0xdc

    if-gt p0, v5, :cond_65

    .line 135
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 129
    .end local v2           #c1:C
    :cond_65
    const/16 v5, 0xf9

    if-lt p0, v5, :cond_66

    const/16 v5, 0xfc

    if-gt p0, v5, :cond_66

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_66
    const/16 v5, 0x162

    if-lt p0, v5, :cond_67

    const/16 v5, 0x173

    if-gt p0, v5, :cond_67

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_67
    const/16 v5, 0x1ab

    if-lt p0, v5, :cond_68

    const/16 v5, 0x1b2

    if-gt p0, v5, :cond_68

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_68
    const/16 v5, 0x1d3

    if-lt p0, v5, :cond_69

    const/16 v5, 0x1dc

    if-gt p0, v5, :cond_69

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_69
    const/16 v5, 0x3a4

    if-lt p0, v5, :cond_6a

    const/16 v5, 0x3a6

    if-gt p0, v5, :cond_6a

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_6a
    const/16 v5, 0x3c4

    if-lt p0, v5, :cond_6b

    const/16 v5, 0x3c6

    if-gt p0, v5, :cond_6b

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_6b
    const/16 v5, 0x3cb

    if-ne p0, v5, :cond_6c

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_6c
    const/16 v5, 0x428

    if-lt p0, v5, :cond_6d

    const/16 v5, 0x42b

    if-gt p0, v5, :cond_6d

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_6d
    const/16 v5, 0x448

    if-lt p0, v5, :cond_6e

    const/16 v5, 0x44b

    if-gt p0, v5, :cond_6e

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_6e
    const/16 v5, 0x1ee4

    if-lt p0, v5, :cond_6f

    const/16 v5, 0x1ef1

    if-gt p0, v5, :cond_6f

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_6f
    const/16 v5, 0x3147

    if-ne p0, v5, :cond_70

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 129
    .end local v2           #c1:C
    :cond_70
    const/16 v5, 0x641

    if-lt p0, v5, :cond_71

    const/16 v5, 0x645

    if-gt p0, v5, :cond_71

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 129
    .end local v2           #c1:C
    :cond_71
    const/16 v5, 0x6a9

    if-ne p0, v5, :cond_72

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 129
    .end local v2           #c1:C
    :cond_72
    const/16 v5, 0x6af

    if-ne p0, v5, :cond_73

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 129
    .end local v2           #c1:C
    :cond_73
    const/16 v5, 0x5e5

    if-lt p0, v5, :cond_74

    const/16 v5, 0x5e7

    if-gt p0, v5, :cond_74

    .line 131
    const/16 v2, 0x38

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_74
    const/16 v5, 0xdd

    if-ne p0, v5, :cond_75

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_75
    const/16 v5, 0xfd

    if-ne p0, v5, :cond_76

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_76
    const/16 v5, 0x174

    if-lt p0, v5, :cond_77

    const/16 v5, 0x17e

    if-gt p0, v5, :cond_77

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    :cond_77
    const/16 v5, 0x1b3

    if-lt p0, v5, :cond_78

    const/16 v5, 0x1bf

    if-gt p0, v5, :cond_78

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    .end local v2           #c1:C
    :cond_78
    const/16 v5, 0x38f

    if-ne p0, v5, :cond_79

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_79
    const/16 v5, 0x3a7

    if-lt p0, v5, :cond_7a

    const/16 v5, 0x3a9

    if-gt p0, v5, :cond_7a

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_7a
    const/16 v5, 0x3c7

    if-lt p0, v5, :cond_7b

    const/16 v5, 0x3c9

    if-gt p0, v5, :cond_7b

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_7b
    const/16 v5, 0x3ce

    if-ne p0, v5, :cond_7c

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_7c
    const/16 v5, 0x42c

    if-lt p0, v5, :cond_7d

    const/16 v5, 0x42f

    if-gt p0, v5, :cond_7d

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_7d
    const/16 v5, 0x44c

    if-lt p0, v5, :cond_7e

    const/16 v5, 0x44f

    if-gt p0, v5, :cond_7e

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_7e
    const/16 v5, 0x1ef2

    if-lt p0, v5, :cond_7f

    const/16 v5, 0x1ef9

    if-gt p0, v5, :cond_7f

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_7f
    const/16 v5, 0x3148

    if-ne p0, v5, :cond_80

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_80
    const/16 v5, 0x314a

    if-ne p0, v5, :cond_81

    .line 131
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 125
    .end local v2           #c1:C
    :cond_81
    const/16 v5, 0x637

    if-lt p0, v5, :cond_82

    const/16 v5, 0x63a

    if-gt p0, v5, :cond_82

    .line 127
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 125
    .end local v2           #c1:C
    :cond_82
    const/16 v5, 0x5e1

    if-lt p0, v5, :cond_83

    const/16 v5, 0x5e4

    if-gt p0, v5, :cond_83

    .line 127
    const/16 v2, 0x39

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_83
    const/16 v5, 0x314e

    if-ne p0, v5, :cond_84

    .line 131
    const/16 v2, 0x30

    .restart local v2       #c1:C
    goto/16 :goto_0

    .line 138
    .end local v2           #c1:C
    :cond_84
    const/4 v2, 0x0

    .restart local v2       #c1:C
    goto/16 :goto_0
.end method

.method public static bl()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eT:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public static bm()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eU:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static bn()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eV:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static bo()Z
    .locals 2

    .prologue
    .line 379
    invoke-static {}, Lcom/android/providers/contacts/t9/h;->bp()Z

    move-result v0

    .line 380
    sget-boolean v1, Lcom/android/providers/contacts/t9/h;->eS:Z

    if-eq v1, v0, :cond_0

    .line 381
    sput-boolean v0, Lcom/android/providers/contacts/t9/h;->eS:Z

    .line 382
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static bp()Z
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 389
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(C)C
    .locals 1
    .parameter

    .prologue
    .line 321
    add-int/lit8 v0, p0, -0x23

    add-int/lit8 v0, v0, 0x43

    int-to-char v0, v0

    return v0
.end method

.method public static c(JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 376
    return-void
.end method

.method public static c(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eU:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v0, p0}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method static d(C)Z
    .locals 1
    .parameter

    .prologue
    .line 325
    const/16 v0, 0x43

    if-lt p0, v0, :cond_0

    const/16 v0, 0x59

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e(C)I
    .locals 2
    .parameter

    .prologue
    .line 347
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 348
    add-int/lit8 v0, p0, -0x30

    .line 359
    :goto_0
    return v0

    .line 351
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 362
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVALID T9 SEARCH CHARACTER"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :sswitch_0
    const/16 v0, 0xa

    goto :goto_0

    .line 355
    :sswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 357
    :sswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 359
    :sswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 351
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x2a -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    return-void
.end method

.method static r(I)C
    .locals 1
    .parameter

    .prologue
    .line 335
    sget-object v0, Lcom/android/providers/contacts/t9/h;->eE:[C

    aget-char v0, v0, p0

    return v0
.end method
