.class public abstract Lcom/android/screenshot/longshot/state/BaseState;
.super Ljava/lang/Object;
.source "BaseState.java"

# interfaces
.implements Lcom/android/screenshot/longshot/state/LongshotAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsBaseState"


# instance fields
.field protected mOnStateListener:Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;

.field protected mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;


# direct methods
.method public constructor <init>(Lcom/android/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/android/screenshot/longshot/state/LongshotContext;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/screenshot/longshot/state/BaseState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    .line 13
    iput-object v0, p0, Lcom/android/screenshot/longshot/state/BaseState;->mOnStateListener:Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 19
    iput-object p1, p0, Lcom/android/screenshot/longshot/state/BaseState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    .line 20
    return-void
.end method


# virtual methods
.method public enter(Lcom/android/screenshot/longshot/state/LongshotState;Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0
    .param p1, "oldState"    # Lcom/android/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 32
    iput-object p2, p0, Lcom/android/screenshot/longshot/state/BaseState;->mOnStateListener:Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 33
    return-void
.end method

.method public exit(Lcom/android/screenshot/longshot/state/LongshotState;)V
    .locals 0
    .param p1, "newState"    # Lcom/android/screenshot/longshot/state/LongshotState;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMovePoint(Lcom/android/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "point"    # Lcom/android/screenshot/longshot/util/MovePoint;

    .line 40
    return-void
.end method
