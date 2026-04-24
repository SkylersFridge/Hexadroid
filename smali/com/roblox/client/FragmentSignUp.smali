.class public Lcom/roblox/client/FragmentSignUp;
.super Landroid/app/Fragment;
.source "FragmentSignUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/FragmentSignUp$13;,
        Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;,
        Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;,
        Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;,
        Lcom/roblox/client/FragmentSignUp$DatePickerFragment;,
        Lcom/roblox/client/FragmentSignUp$Validation;,
        Lcom/roblox/client/FragmentSignUp$ValidationOp;,
        Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;
    }
.end annotation


# static fields
.field private static mBirthday:Landroid/widget/Button;

.field static mDateSelected:Z

.field static mDay:I

.field static mMonth:I

.field static mYear:I


# instance fields
.field private mAgreementTextView:Landroid/widget/TextView;

.field private mBackgroundView:Landroid/view/View;

.field private mCancelTextView:Landroid/widget/TextView;

.field private mEmail:Ljava/lang/String;

.field private mEmailCheckImageView:Landroid/widget/ImageView;

.field private mEmailEditText:Landroid/widget/EditText;

.field private mEmailVerifyValidation:Lcom/roblox/client/FragmentSignUp$Validation;

.field private mGender:I

.field private mGenderSpinner:Landroid/widget/Spinner;

.field private mIsCanceling:Z

.field private mPassword:Ljava/lang/String;

.field private mPasswordCheckImageView:Landroid/widget/ImageView;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mPasswordValidation:Lcom/roblox/client/FragmentSignUp$Validation;

.field private mPasswordVerify:Ljava/lang/String;

.field private mPasswordVerifyCheckImageView:Landroid/widget/ImageView;

.field private mPasswordVerifyEditText:Landroid/widget/EditText;

.field private mPasswordVerifyValidation:Lcom/roblox/client/FragmentSignUp$Validation;

.field private mSignUpButton:Landroid/widget/Button;

.field private mSignUpCallbacks:Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;

.field private mUsername:Ljava/lang/String;

.field private mUsernameCheckImageView:Landroid/widget/ImageView;

.field private mUsernameEditText:Landroid/widget/EditText;

.field private mUsernameValidation:Lcom/roblox/client/FragmentSignUp$Validation;

.field private s1:Ljava/lang/String;

.field private s10:Ljava/lang/String;

.field private s2:Ljava/lang/String;

.field private s3:Ljava/lang/String;

.field private s4:Ljava/lang/String;

.field private s5:Ljava/lang/String;

.field private s6:Ljava/lang/String;

.field private s7:Ljava/lang/String;

.field private s8:Ljava/lang/String;

.field private s9:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/FragmentSignUp;->mBirthday:Landroid/widget/Button;

    .line 79
    const/16 v0, 0x7d0

    sput v0, Lcom/roblox/client/FragmentSignUp;->mYear:I

    .line 80
    sput v1, Lcom/roblox/client/FragmentSignUp;->mMonth:I

    .line 81
    const/4 v0, 0x1

    sput v0, Lcom/roblox/client/FragmentSignUp;->mDay:I

    .line 82
    sput-boolean v1, Lcom/roblox/client/FragmentSignUp;->mDateSelected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mSignUpCallbacks:Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;

    .line 56
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mBackgroundView:Landroid/view/View;

    .line 57
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mCancelTextView:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsernameEditText:Landroid/widget/EditText;

    .line 59
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsernameCheckImageView:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordEditText:Landroid/widget/EditText;

    .line 61
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordCheckImageView:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyEditText:Landroid/widget/EditText;

    .line 63
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyCheckImageView:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mGenderSpinner:Landroid/widget/Spinner;

    .line 66
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mEmailEditText:Landroid/widget/EditText;

    .line 67
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mEmailCheckImageView:Landroid/widget/ImageView;

    .line 68
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mSignUpButton:Landroid/widget/Button;

    .line 69
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mAgreementTextView:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsername:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPassword:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerify:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mEmail:Ljava/lang/String;

    .line 84
    iput v1, p0, Lcom/roblox/client/FragmentSignUp;->mGender:I

    .line 85
    iput-boolean v1, p0, Lcom/roblox/client/FragmentSignUp;->mIsCanceling:Z

    .line 86
    sget-object v0, Lcom/roblox/client/FragmentSignUp$Validation;->BLANK:Lcom/roblox/client/FragmentSignUp$Validation;

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsernameValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    .line 87
    sget-object v0, Lcom/roblox/client/FragmentSignUp$Validation;->BLANK:Lcom/roblox/client/FragmentSignUp$Validation;

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    .line 88
    sget-object v0, Lcom/roblox/client/FragmentSignUp$Validation;->BLANK:Lcom/roblox/client/FragmentSignUp$Validation;

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    .line 89
    sget-object v0, Lcom/roblox/client/FragmentSignUp$Validation;->BLANK:Lcom/roblox/client/FragmentSignUp$Validation;

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mEmailVerifyValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    .line 91
    const-string v0, "Z^#q"

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s3:Ljava/lang/String;

    .line 92
    const-string v0, "Fu.*mJ"

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s1:Ljava/lang/String;

    .line 93
    const-string v0, "l%=f~RIW"

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s4:Ljava/lang/String;

    .line 94
    const-string v0, "L65HQ,v?K"

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s2:Ljava/lang/String;

    .line 95
    const-string v0, "hC39$"

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s5:Ljava/lang/String;

    .line 96
    const-string v0, "qb@Wl"

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s7:Ljava/lang/String;

    .line 97
    const-string v0, "Av=M"

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s8:Ljava/lang/String;

    .line 98
    const-string v0, "B7YpO"

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s10:Ljava/lang/String;

    .line 99
    const-string v0, "jEda0J~i"

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s6:Ljava/lang/String;

    .line 100
    const-string v0, "HZmfcyG9,F"

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s9:Ljava/lang/String;

    .line 665
    return-void
.end method

.method static synthetic access$000(Lcom/roblox/client/FragmentSignUp;)Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mSignUpCallbacks:Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/roblox/client/FragmentSignUp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/roblox/client/FragmentSignUp;->mIsCanceling:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s6:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/roblox/client/FragmentSignUp;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/roblox/client/FragmentSignUp;->mIsCanceling:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s7:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s8:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s9:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s10:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->s5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/roblox/client/FragmentSignUp;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/roblox/client/FragmentSignUp;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/roblox/client/FragmentSignUp;->computeHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/roblox/client/FragmentSignUp;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mEmailEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/roblox/client/FragmentSignUp;)I
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget v0, p0, Lcom/roblox/client/FragmentSignUp;->mGender:I

    return v0
.end method

.method static synthetic access$402(Lcom/roblox/client/FragmentSignUp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/roblox/client/FragmentSignUp;->mGender:I

    return p1
.end method

.method static synthetic access$500(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/roblox/client/FragmentSignUp;Lcom/roblox/client/FragmentSignUp$Validation;)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;
    .param p1, "x1"    # Lcom/roblox/client/FragmentSignUp$Validation;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/roblox/client/FragmentSignUp;->setUsernameValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V

    return-void
.end method

.method static synthetic access$800(Lcom/roblox/client/FragmentSignUp;Lcom/roblox/client/FragmentSignUp$Validation;)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;
    .param p1, "x1"    # Lcom/roblox/client/FragmentSignUp$Validation;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/roblox/client/FragmentSignUp;->setPasswordValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V

    return-void
.end method

.method static synthetic access$900(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentSignUp;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method private computeHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 262
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 263
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 265
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 266
    .local v0, "byteData":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 269
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static onDateSet()V
    .locals 6

    .prologue
    .line 301
    new-instance v0, Ljava/util/GregorianCalendar;

    sget v2, Lcom/roblox/client/FragmentSignUp;->mYear:I

    sget v3, Lcom/roblox/client/FragmentSignUp;->mMonth:I

    sget v4, Lcom/roblox/client/FragmentSignUp;->mDay:I

    invoke-direct {v0, v2, v3, v4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 302
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const v5, 0x80010

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "date":Ljava/lang/String;
    sget-object v2, Lcom/roblox/client/FragmentSignUp;->mBirthday:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const/4 v2, 0x1

    sput-boolean v2, Lcom/roblox/client/FragmentSignUp;->mDateSelected:Z

    .line 305
    return-void
.end method

.method private setEmailValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V
    .locals 1
    .param p1, "s"    # Lcom/roblox/client/FragmentSignUp$Validation;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mEmailCheckImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/FragmentSignUp;->setImageViewValidation(Landroid/widget/ImageView;Lcom/roblox/client/FragmentSignUp$Validation;)V

    .line 344
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp;->mEmailVerifyValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    .line 345
    return-void
.end method

.method private setImageViewValidation(Landroid/widget/ImageView;Lcom/roblox/client/FragmentSignUp$Validation;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "s"    # Lcom/roblox/client/FragmentSignUp$Validation;

    .prologue
    .line 309
    sget-object v0, Lcom/roblox/client/FragmentSignUp$13;->$SwitchMap$com$roblox$client$FragmentSignUp$Validation:[I

    invoke-virtual {p2}, Lcom/roblox/client/FragmentSignUp$Validation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 312
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 315
    :pswitch_1
    const v0, 0x7f02005c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 318
    :pswitch_2
    const v0, 0x7f02005d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPasswordValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V
    .locals 1
    .param p1, "s"    # Lcom/roblox/client/FragmentSignUp$Validation;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordCheckImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/FragmentSignUp;->setImageViewValidation(Landroid/widget/ImageView;Lcom/roblox/client/FragmentSignUp$Validation;)V

    .line 332
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    .line 333
    return-void
.end method

.method private setPasswordVerifyValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V
    .locals 1
    .param p1, "s"    # Lcom/roblox/client/FragmentSignUp$Validation;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyCheckImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/FragmentSignUp;->setImageViewValidation(Landroid/widget/ImageView;Lcom/roblox/client/FragmentSignUp$Validation;)V

    .line 338
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    .line 339
    return-void
.end method

.method private setUsernameValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V
    .locals 1
    .param p1, "s"    # Lcom/roblox/client/FragmentSignUp$Validation;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsernameCheckImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/FragmentSignUp;->setImageViewValidation(Landroid/widget/ImageView;Lcom/roblox/client/FragmentSignUp$Validation;)V

    .line 326
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp;->mUsernameValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    .line 327
    return-void
.end method


# virtual methods
.method public doEmailValidation()V
    .locals 5

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getStringsFromUi()V

    .line 492
    iget-object v3, p0, Lcom/roblox/client/FragmentSignUp;->mEmail:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    sget-object v3, Lcom/roblox/client/FragmentSignUp$Validation;->BLANK:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-direct {p0, v3}, Lcom/roblox/client/FragmentSignUp;->setEmailValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    const-string v3, "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 499
    .local v2, "p":Ljava/util/regex/Pattern;
    iget-object v3, p0, Lcom/roblox/client/FragmentSignUp;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 501
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 502
    .local v1, "matches":Z
    if-eqz v1, :cond_2

    sget-object v3, Lcom/roblox/client/FragmentSignUp$Validation;->VALID:Lcom/roblox/client/FragmentSignUp$Validation;

    :goto_1
    invoke-direct {p0, v3}, Lcom/roblox/client/FragmentSignUp;->setEmailValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V

    .line 503
    if-nez v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b001a

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 502
    :cond_2
    sget-object v3, Lcom/roblox/client/FragmentSignUp$Validation;->INVALID:Lcom/roblox/client/FragmentSignUp$Validation;

    goto :goto_1
.end method

.method public doPasswordVerifyValidation(Z)V
    .locals 2
    .param p1, "warn"    # Z

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getStringsFromUi()V

    .line 471
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerify:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    :cond_0
    sget-object v0, Lcom/roblox/client/FragmentSignUp$Validation;->BLANK:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-direct {p0, v0}, Lcom/roblox/client/FragmentSignUp;->setPasswordVerifyValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPassword:Ljava/lang/String;

    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerify:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    sget-object v0, Lcom/roblox/client/FragmentSignUp$Validation;->VALID:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-direct {p0, v0}, Lcom/roblox/client/FragmentSignUp;->setPasswordVerifyValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V

    goto :goto_0

    .line 481
    :cond_3
    sget-object v0, Lcom/roblox/client/FragmentSignUp$Validation;->INVALID:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-direct {p0, v0}, Lcom/roblox/client/FragmentSignUp;->setPasswordVerifyValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V

    .line 482
    if-eqz p1, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0088

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public doValidationTask(Lcom/roblox/client/FragmentSignUp$ValidationOp;)V
    .locals 3
    .param p1, "op"    # Lcom/roblox/client/FragmentSignUp$ValidationOp;

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getStringsFromUi()V

    .line 432
    sget-object v0, Lcom/roblox/client/FragmentSignUp$13;->$SwitchMap$com$roblox$client$FragmentSignUp$ValidationOp:[I

    invoke-virtual {p1}, Lcom/roblox/client/FragmentSignUp$ValidationOp;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_0
    return-void

    .line 435
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lcom/roblox/client/FragmentSignUp$Validation;->BLANK:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-direct {p0, v0}, Lcom/roblox/client/FragmentSignUp;->setUsernameValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0085

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    .line 442
    sget-object v0, Lcom/roblox/client/FragmentSignUp$Validation;->INVALID:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-direct {p0, v0}, Lcom/roblox/client/FragmentSignUp;->setUsernameValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0084

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    .line 447
    sget-object v0, Lcom/roblox/client/FragmentSignUp$Validation;->INVALID:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-direct {p0, v0}, Lcom/roblox/client/FragmentSignUp;->setUsernameValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V

    goto :goto_0

    .line 451
    :cond_2
    new-instance v0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;-><init>(Lcom/roblox/client/FragmentSignUp;Lcom/roblox/client/FragmentSignUp$ValidationOp;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 455
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 457
    new-instance v0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;-><init>(Lcom/roblox/client/FragmentSignUp;Lcom/roblox/client/FragmentSignUp$ValidationOp;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 461
    :cond_3
    sget-object v0, Lcom/roblox/client/FragmentSignUp$Validation;->BLANK:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-direct {p0, v0}, Lcom/roblox/client/FragmentSignUp;->setPasswordValidation(Lcom/roblox/client/FragmentSignUp$Validation;)V

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getStringsFromUi()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsername:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPassword:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerify:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mEmail:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "view":Landroid/view/View;
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const v2, 0x7f03000d

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 120
    :goto_0
    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mBackgroundView:Landroid/view/View;

    .line 121
    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mCancelTextView:Landroid/widget/TextView;

    .line 122
    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mUsernameEditText:Landroid/widget/EditText;

    .line 123
    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mUsernameCheckImageView:Landroid/widget/ImageView;

    .line 124
    const v2, 0x7f090054

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordEditText:Landroid/widget/EditText;

    .line 125
    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordCheckImageView:Landroid/widget/ImageView;

    .line 126
    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyEditText:Landroid/widget/EditText;

    .line 127
    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyCheckImageView:Landroid/widget/ImageView;

    .line 128
    const v2, 0x7f090059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lcom/roblox/client/FragmentSignUp;->mBirthday:Landroid/widget/Button;

    .line 129
    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mGenderSpinner:Landroid/widget/Spinner;

    .line 130
    const v2, 0x7f09005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mEmailEditText:Landroid/widget/EditText;

    .line 131
    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mEmailCheckImageView:Landroid/widget/ImageView;

    .line 132
    const v2, 0x7f09005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mSignUpButton:Landroid/widget/Button;

    .line 133
    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mAgreementTextView:Landroid/widget/TextView;

    .line 135
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mUsernameEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v2, v3}, Lcom/roblox/client/FragmentSignUp;->setNextButton(Landroid/widget/TextView;Landroid/view/View;)V

    .line 136
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v2, v3}, Lcom/roblox/client/FragmentSignUp;->setNextButton(Landroid/widget/TextView;Landroid/view/View;)V

    .line 138
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mBackgroundView:Landroid/view/View;

    new-instance v3, Lcom/roblox/client/FragmentSignUp$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentSignUp$1;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mCancelTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/roblox/client/FragmentSignUp$2;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentSignUp$2;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mUsernameEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/roblox/client/FragmentSignUp$3;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentSignUp$3;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/roblox/client/FragmentSignUp$4;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentSignUp$4;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 176
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/roblox/client/FragmentSignUp$5;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentSignUp$5;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 186
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/roblox/client/FragmentSignUp$6;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentSignUp$6;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 199
    sget-object v2, Lcom/roblox/client/FragmentSignUp;->mBirthday:Landroid/widget/Button;

    new-instance v3, Lcom/roblox/client/FragmentSignUp$7;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentSignUp$7;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mEmailEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/roblox/client/FragmentSignUp$8;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentSignUp$8;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 220
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mEmailEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/roblox/client/FragmentSignUp$9;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentSignUp$9;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 233
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mSignUpButton:Landroid/widget/Button;

    new-instance v3, Lcom/roblox/client/FragmentSignUp$10;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentSignUp$10;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070002

    const v4, 0x1090008

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 241
    .local v0, "genderAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 242
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mGenderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 243
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp;->mGenderSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/roblox/client/FragmentSignUp$11;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentSignUp$11;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/FragmentSignUp;->mAgreementTextView:Landroid/widget/TextView;

    const v4, 0x7f0b006f

    invoke-virtual {p0, v4}, Lcom/roblox/client/FragmentSignUp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/roblox/client/Utils;->makeTextViewHtml(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 258
    return-object v1

    .line 117
    .end local v0    # "genderAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    const v2, 0x7f03000c

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 290
    const/16 v0, 0x7d0

    sput v0, Lcom/roblox/client/FragmentSignUp;->mYear:I

    .line 291
    sput v1, Lcom/roblox/client/FragmentSignUp;->mMonth:I

    .line 292
    const/4 v0, 0x1

    sput v0, Lcom/roblox/client/FragmentSignUp;->mDay:I

    .line 293
    sput-boolean v1, Lcom/roblox/client/FragmentSignUp;->mDateSelected:Z

    .line 294
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 279
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxServiceActivity;

    const-string v1, "AboutScreen"

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->sendAnalyticsScreen(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 283
    :cond_0
    return-void
.end method

.method public onSignUpClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 349
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getStringsFromUi()V

    .line 351
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsername:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0040

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    .line 387
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsername:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b003f

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 361
    :cond_1
    iget v0, p0, Lcom/roblox/client/FragmentSignUp;->mGender:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/roblox/client/FragmentSignUp;->mGender:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b003e

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 366
    :cond_2
    sget-boolean v0, Lcom/roblox/client/FragmentSignUp;->mDateSelected:Z

    if-nez v0, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b003d

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 372
    :cond_3
    invoke-virtual {p0, v2}, Lcom/roblox/client/FragmentSignUp;->doPasswordVerifyValidation(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->doEmailValidation()V

    .line 377
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mUsernameValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    sget-object v1, Lcom/roblox/client/FragmentSignUp$Validation;->VALID:Lcom/roblox/client/FragmentSignUp$Validation;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    sget-object v1, Lcom/roblox/client/FragmentSignUp$Validation;->VALID:Lcom/roblox/client/FragmentSignUp$Validation;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mPasswordVerifyValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    sget-object v1, Lcom/roblox/client/FragmentSignUp$Validation;->VALID:Lcom/roblox/client/FragmentSignUp$Validation;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp;->mEmailVerifyValidation:Lcom/roblox/client/FragmentSignUp$Validation;

    sget-object v1, Lcom/roblox/client/FragmentSignUp$Validation;->INVALID:Lcom/roblox/client/FragmentSignUp$Validation;

    if-ne v0, v1, :cond_5

    .line 382
    :cond_4
    invoke-virtual {p0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0020

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 386
    :cond_5
    new-instance v0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;

    invoke-direct {v0, p0}, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setNextButton(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "nextView"    # Landroid/view/View;

    .prologue
    .line 393
    move-object v0, p2

    .line 394
    .local v0, "nextViewFinal":Landroid/view/View;
    new-instance v1, Lcom/roblox/client/FragmentSignUp$12;

    invoke-direct {v1, p0, v0}, Lcom/roblox/client/FragmentSignUp$12;-><init>(Lcom/roblox/client/FragmentSignUp;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 403
    return-void
.end method

.method public setSignUpCallbacks(Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp;->mSignUpCallbacks:Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;

    .line 105
    return-void
.end method
