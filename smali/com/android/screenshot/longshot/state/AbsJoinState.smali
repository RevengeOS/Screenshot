.class public abstract Lcom/android/screenshot/longshot/state/AbsJoinState;
.super Lcom/android/screenshot/longshot/state/BaseState;
.source "AbsJoinState.java"

# interfaces
.implements Lcom/android/screenshot/longshot/task/JoinTask$OnJoinListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.AbsJoinState"


# instance fields
.field protected mJoinCache:Lcom/android/screenshot/longshot/cache/JoinCache;

.field protected mJoinTask:Lcom/android/screenshot/longshot/task/JoinTask;

.field protected mRunnableCache:Lcom/android/screenshot/longshot/cache/RunnableCache;


# direct methods
.method public constructor <init>(Lcom/android/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/android/screenshot/longshot/state/LongshotContext;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/screenshot/longshot/state/BaseState;-><init>(Lcom/android/screenshot/longshot/state/LongshotContext;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mJoinTask:Lcom/android/screenshot/longshot/task/JoinTask;

    .line 23
    iput-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mJoinCache:Lcom/android/screenshot/longshot/cache/JoinCache;

    .line 25
    iput-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mRunnableCache:Lcom/android/screenshot/longshot/cache/RunnableCache;

    .line 31
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/android/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/android/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mJoinCache:Lcom/android/screenshot/longshot/cache/JoinCache;

    .line 32
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/android/screenshot/longshot/state/LongshotContext;->getRunnableCache()Lcom/android/screenshot/longshot/cache/RunnableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mRunnableCache:Lcom/android/screenshot/longshot/cache/RunnableCache;

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract createJoinTask()Lcom/android/screenshot/longshot/task/JoinTask;
.end method

.method public enter(Lcom/android/screenshot/longshot/state/LongshotState;Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 40
    invoke-super {p0, p1, p2}, Lcom/android/screenshot/longshot/state/BaseState;->enter(Lcom/android/screenshot/longshot/state/LongshotState;Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 41
    const-string v0, "AbsJoinState.enter"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/AbsJoinState;->createJoinTask()Lcom/android/screenshot/longshot/task/JoinTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mJoinTask:Lcom/android/screenshot/longshot/task/JoinTask;

    .line 43
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mJoinTask:Lcom/android/screenshot/longshot/task/JoinTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/screenshot/longshot/task/JoinTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 45
    return-void
.end method

.method public exit(Lcom/android/screenshot/longshot/state/LongshotState;)V
    .locals 2
    .param p1, "newState"    # Lcom/android/screenshot/longshot/state/LongshotState;

    .line 49
    const-string v0, "AbsJoinState.exit"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mJoinTask:Lcom/android/screenshot/longshot/task/JoinTask;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mJoinTask:Lcom/android/screenshot/longshot/task/JoinTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/screenshot/longshot/task/JoinTask;->cancel(Z)Z

    .line 53
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 54
    invoke-super {p0, p1}, Lcom/android/screenshot/longshot/state/BaseState;->exit(Lcom/android/screenshot/longshot/state/LongshotState;)V

    .line 55
    return-void
.end method

.method protected getErrorText()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/android/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFailedText()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/android/screenshot/longshot/util/Features;->SHOW_JOIN_ERROR:Lcom/android/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/android/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/AbsJoinState;->getErrorText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/AbsJoinState;->getSuccessText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStateOnFailed()Lcom/android/screenshot/longshot/state/LongshotState;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/android/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/screenshot/statistics/EventStatistics$Error;->JOIN:Lcom/android/screenshot/statistics/EventStatistics$Error;

    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/AbsJoinState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/screenshot/statistics/EventStatistics;->addError(Landroid/content/Context;Lcom/android/screenshot/statistics/EventStatistics$Error;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/android/screenshot/longshot/state/LongshotState;->MAIN:Lcom/android/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getStateOnSuccess()Lcom/android/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 90
    sget-object v0, Lcom/android/screenshot/longshot/state/LongshotState;->MAIN:Lcom/android/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected abstract getSuccessText()Ljava/lang/String;
.end method

.method public onJoinFailed()V
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/AbsJoinState;->getFailedText()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "text":Ljava/lang/String;
    const-string v1, "Longshot.AbsJoinState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onJoinFailed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/AbsJoinState;->updateIndex()V

    .line 72
    iget-object v1, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/AbsJoinState;->getStateOnFailed()Lcom/android/screenshot/longshot/state/LongshotState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/screenshot/longshot/state/LongshotContext;->updateState(Lcom/android/screenshot/longshot/state/LongshotState;Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 73
    return-void
.end method

.method public onJoinSuccess()V
    .locals 3

    .line 59
    const-string v0, "Longshot.AbsJoinState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJoinSuccess, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mJoinCache:Lcom/android/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v2}, Lcom/android/screenshot/longshot/cache/JoinCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/AbsJoinState;->prepareSuccess()V

    .line 62
    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/AbsJoinState;->updateIndex()V

    .line 63
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/AbsJoinState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/AbsJoinState;->getStateOnSuccess()Lcom/android/screenshot/longshot/state/LongshotState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/screenshot/longshot/state/LongshotContext;->updateState(Lcom/android/screenshot/longshot/state/LongshotState;Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 64
    return-void
.end method

.method protected prepareSuccess()V
    .locals 0

    .line 98
    return-void
.end method

.method protected abstract updateIndex()V
.end method
