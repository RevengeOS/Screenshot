.class public Lcom/android/screenshot/longshot/state/ShotOneState;
.super Lcom/android/screenshot/longshot/state/ShotNextState;
.source "ShotOneState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotOneState"


# direct methods
.method public constructor <init>(Lcom/android/screenshot/longshot/state/LongshotContext;Lcom/android/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "stateContext"    # Lcom/android/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/android/screenshot/longshot/util/MovePoint;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/screenshot/longshot/state/ShotNextState;-><init>(Lcom/android/screenshot/longshot/state/LongshotContext;Lcom/android/screenshot/longshot/util/MovePoint;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getNextState()Lcom/android/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 21
    sget-object v0, Lcom/android/screenshot/longshot/state/LongshotState;->STITCH_ONE:Lcom/android/screenshot/longshot/state/LongshotState;

    return-object v0
.end method
