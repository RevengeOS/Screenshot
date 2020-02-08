.class public Lcom/android/screenshot/longshot/state/ShotFirstState;
.super Lcom/android/screenshot/longshot/state/AbsShotState;
.source "ShotFirstState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ShotFirstState"


# direct methods
.method public constructor <init>(Lcom/android/screenshot/longshot/state/LongshotContext;Lcom/android/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/android/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/android/screenshot/longshot/util/MovePoint;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/screenshot/longshot/state/AbsShotState;-><init>(Lcom/android/screenshot/longshot/state/LongshotContext;Lcom/android/screenshot/longshot/util/MovePoint;)V

    .line 17
    sget-object v0, Lcom/android/screenshot/longshot/util/Configs;->CAPTURE_FIRST_DELAY:Lcom/android/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/android/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/android/screenshot/longshot/state/ShotFirstState;->mCaptureDelay:I

    .line 18
    return-void
.end method


# virtual methods
.method protected onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 26
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/ShotFirstState;->mFirstCache:Lcom/android/screenshot/longshot/cache/ImageCache;

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/android/screenshot/longshot/state/ShotFirstState;->mFirstCache:Lcom/android/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v1, p1}, Lcom/android/screenshot/longshot/cache/ImageCache;->add(Ljava/lang/Object;)Z

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/ShotFirstState;->updateState()V

    .line 30
    return-void

    .line 28
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateMovePoint(Lcom/android/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "movenext"    # Lcom/android/screenshot/longshot/util/MovePoint;

    .line 42
    iput-object p1, p0, Lcom/android/screenshot/longshot/state/ShotFirstState;->mMovePoint:Lcom/android/screenshot/longshot/util/MovePoint;

    .line 43
    return-void
.end method

.method protected updateState()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/ShotFirstState;->mOnStateListener:Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/ShotFirstState;->mOnStateListener:Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;

    invoke-interface {v0}, Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;->updateState()V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/ShotFirstState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/android/screenshot/longshot/state/LongshotState;->MAIN:Lcom/android/screenshot/longshot/state/LongshotState;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/screenshot/longshot/state/LongshotContext;->updateState(Lcom/android/screenshot/longshot/state/LongshotState;Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 38
    :goto_0
    return-void
.end method
