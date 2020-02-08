.class public Lcom/android/screenshot/longshot/state/MoveNextState;
.super Lcom/android/screenshot/longshot/state/AbsMoveState;
.source "MoveNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.MoveNextState"


# direct methods
.method public constructor <init>(Lcom/android/screenshot/longshot/state/LongshotContext;Lcom/android/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "stateContext"    # Lcom/android/screenshot/longshot/state/LongshotContext;
    .param p2, "point"    # Lcom/android/screenshot/longshot/util/MovePoint;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/screenshot/longshot/state/AbsMoveState;-><init>(Lcom/android/screenshot/longshot/state/LongshotContext;Lcom/android/screenshot/longshot/util/MovePoint;)V

    .line 17
    return-void
.end method

.method private getShotLastState()Lcom/android/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/screenshot/longshot/util/Configs;->IS_STRICT_LIST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/android/screenshot/longshot/state/LongshotState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/android/screenshot/longshot/state/LongshotState;

    :goto_0
    return-object v0
.end method

.method private getShotNextState()Lcom/android/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 67
    sget-boolean v0, Lcom/android/screenshot/longshot/util/Configs;->IS_BG_LIST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/android/screenshot/longshot/state/LongshotState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/android/screenshot/longshot/state/LongshotState;

    :goto_0
    return-object v0
.end method

.method private getShotOneState()Lcom/android/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 71
    sget-object v0, Lcom/android/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/android/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method private getShotOverState()Lcom/android/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/screenshot/longshot/util/Configs;->IS_BG_LIST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/android/screenshot/longshot/state/LongshotState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/android/screenshot/longshot/state/LongshotState;

    :goto_0
    return-object v0
.end method

.method private isList()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/screenshot/longshot/util/Configs;->IS_PAGE_LIST:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/screenshot/longshot/util/Configs;->IS_SMALL_LIST:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNonList()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/android/screenshot/longshot/util/Configs;->IS_NON_LIST:Z

    return v0
.end method

.method private isScroll()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/MoveNextState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/android/screenshot/longshot/state/LongshotContext;->isScroll()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getNextState()Lcom/android/screenshot/longshot/state/LongshotState;
    .locals 4

    .line 24
    invoke-direct {p0}, Lcom/android/screenshot/longshot/state/MoveNextState;->getShotNextState()Lcom/android/screenshot/longshot/state/LongshotState;

    move-result-object v0

    .line 25
    .local v0, "state":Lcom/android/screenshot/longshot/state/LongshotState;
    const-string v1, "Longshot.MoveNextState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/screenshot/longshot/state/MoveNextState;->isNonList()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/MoveNextState;->isOverScroll()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/screenshot/longshot/state/MoveNextState;->isScroll()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/screenshot/longshot/state/MoveNextState;->isList()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lcom/android/screenshot/longshot/state/MoveNextState;->isOverScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/screenshot/longshot/state/MoveNextState;->getShotLastState()Lcom/android/screenshot/longshot/state/LongshotState;

    move-result-object v0

    .line 40
    :cond_0
    return-object v0
.end method
