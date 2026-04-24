.class public Lcom/roblox/client/FragmentAbout;
.super Landroid/app/Fragment;
.source "FragmentAbout.java"


# instance fields
.field private mBackgroundView:Landroid/view/View;

.field private mBaseUrl:Landroid/widget/TextView;

.field private mDialogueView:Landroid/view/View;

.field private mTermsLicenscingPrivacy:Landroid/widget/TextView;

.field private mUserAgent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/roblox/client/FragmentAbout;->mBackgroundView:Landroid/view/View;

    .line 13
    iput-object v0, p0, Lcom/roblox/client/FragmentAbout;->mDialogueView:Landroid/view/View;

    .line 14
    iput-object v0, p0, Lcom/roblox/client/FragmentAbout;->mTermsLicenscingPrivacy:Landroid/widget/TextView;

    .line 15
    iput-object v0, p0, Lcom/roblox/client/FragmentAbout;->mUserAgent:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/roblox/client/FragmentAbout;->mBaseUrl:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    .local v1, "view":Landroid/view/View;
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    const v2, 0x7f030008

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 30
    :goto_0
    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/FragmentAbout;->mBackgroundView:Landroid/view/View;

    .line 31
    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/FragmentAbout;->mDialogueView:Landroid/view/View;

    .line 32
    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/roblox/client/FragmentAbout;->mTermsLicenscingPrivacy:Landroid/widget/TextView;

    .line 33
    const v2, 0x7f090045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/roblox/client/FragmentAbout;->mUserAgent:Landroid/widget/TextView;

    .line 34
    const v2, 0x7f090044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/roblox/client/FragmentAbout;->mBaseUrl:Landroid/widget/TextView;

    .line 36
    iget-object v2, p0, Lcom/roblox/client/FragmentAbout;->mBackgroundView:Landroid/view/View;

    new-instance v3, Lcom/roblox/client/FragmentAbout$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentAbout$1;-><init>(Lcom/roblox/client/FragmentAbout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v2, p0, Lcom/roblox/client/FragmentAbout;->mDialogueView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/roblox/client/FragmentAbout;->mDialogueView:Landroid/view/View;

    new-instance v3, Lcom/roblox/client/FragmentAbout$2;

    invoke-direct {v3, p0}, Lcom/roblox/client/FragmentAbout$2;-><init>(Lcom/roblox/client/FragmentAbout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_0
    const v2, 0x7f0b0071

    invoke-virtual {p0, v2}, Lcom/roblox/client/FragmentAbout;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "res":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/roblox/client/FragmentAbout;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/FragmentAbout;->mTermsLicenscingPrivacy:Landroid/widget/TextView;

    invoke-static {v2, v3, v0}, Lcom/roblox/client/Utils;->makeTextViewHtml(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/roblox/client/FragmentAbout;->mUserAgent:Landroid/widget/TextView;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->userAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v2, p0, Lcom/roblox/client/FragmentAbout;->mBaseUrl:Landroid/widget/TextView;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object v1

    .line 27
    .end local v0    # "res":Ljava/lang/String;
    :cond_1
    const v2, 0x7f030007

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 65
    invoke-virtual {p0}, Lcom/roblox/client/FragmentAbout;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/roblox/client/FragmentAbout;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxServiceActivity;

    const-string v1, "AboutScreen"

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->sendAnalyticsScreen(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
