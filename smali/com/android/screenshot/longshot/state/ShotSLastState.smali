.class public Lcom/android/screenshot/longshot/state/ShotSLastState;
.super Lcom/android/screenshot/longshot/state/ShotLastState;
.source "ShotSLastState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotSLastState"


# direct methods
.method public constructor <init>(Lcom/android/screenshot/longshot/state/LongshotContext;Lcom/android/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/android/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/android/screenshot/longshot/util/MovePoint;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/screenshot/longshot/state/ShotLastState;-><init>(Lcom/android/screenshot/longshot/state/LongshotContext;Lcom/android/screenshot/longshot/util/MovePoint;)V

    .line 15
    sget-object v0, Lcom/android/screenshot/longshot/util/Configs;->OFFSET_SHOT_SLAST:Lcom/android/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/android/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/android/screenshot/longshot/state/ShotSLastState;->mOffset:I

    .line 16
    return-void
.end method


# virtual methods
.method protected getNextState()Lcom/android/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 23
    sget-object v0, Lcom/android/screenshot/longshot/state/LongshotState;->STITCH_SLAST:Lcom/android/screenshot/longshot/state/LongshotState;

    return-object v0
.end method
