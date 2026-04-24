.class public Lcom/roblox/client/FragmentWebView;
.super Landroid/app/Fragment;
.source "FragmentWebView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 15
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/roblox/client/FragmentWebView;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09005f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    move-object v0, v1

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method
