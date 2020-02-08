.class public Lcom/android/screenshot/longshot/state/UnsupportedState;
.super Lcom/android/screenshot/longshot/state/MainState;
.source "UnsupportedState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.UnsupportedState"


# direct methods
.method public constructor <init>(Lcom/android/screenshot/longshot/state/LongshotContext;)V
    .locals 0
    .param p1, "stateContext"    # Lcom/android/screenshot/longshot/state/LongshotContext;

    .line 17
    invoke-direct {p0, p1}, Lcom/android/screenshot/longshot/state/MainState;-><init>(Lcom/android/screenshot/longshot/state/LongshotContext;)V

    .line 18
    return-void
.end method


# virtual methods
.method public enter(Lcom/android/screenshot/longshot/state/LongshotState;Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 25
    invoke-super {p0, p1, p2}, Lcom/android/screenshot/longshot/state/MainState;->enter(Lcom/android/screenshot/longshot/state/LongshotState;Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 26
    sget-object v0, Lcom/android/screenshot/longshot/util/Features;->SHOW_UNSUPPORTED:Lcom/android/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/android/screenshot/longshot/util/Features;->getValue()Z

    .line 28
    return-void
.end method

.method protected initViews(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 36
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 32
    return-void
.end method

.method protected updateButtons(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 39
    return-void
.end method
