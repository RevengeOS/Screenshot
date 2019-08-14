.class public Lorg/pixelexperience/screenshot/longshot/state/StitchSLastState;
.super Lorg/pixelexperience/screenshot/longshot/state/StitchLastState;
.source "StitchSLastState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchSLastState"


# direct methods
.method public constructor <init>(Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;)V
    .locals 0
    .param p1, "stateContext"    # Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;

    .line 14
    invoke-direct {p0, p1}, Lorg/pixelexperience/screenshot/longshot/state/StitchLastState;-><init>(Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected createJoinTask()Lorg/pixelexperience/screenshot/longshot/task/JoinTask;
    .locals 7

    .line 22
    new-instance v6, Lorg/pixelexperience/screenshot/longshot/task/StitchSLastTask;

    iget-object v2, p0, Lorg/pixelexperience/screenshot/longshot/state/StitchSLastState;->mJoinCache:Lorg/pixelexperience/screenshot/longshot/cache/JoinCache;

    iget-object v0, p0, Lorg/pixelexperience/screenshot/longshot/state/StitchSLastState;->mStateContext:Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lorg/pixelexperience/screenshot/longshot/state/StitchSLastState;->mStateContext:Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;

    .line 23
    invoke-interface {v0}, Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v4

    iget-object v0, p0, Lorg/pixelexperience/screenshot/longshot/state/StitchSLastState;->mStateContext:Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;->getDisplayHeight()I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/pixelexperience/screenshot/longshot/task/StitchSLastTask;-><init>(Lorg/pixelexperience/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/pixelexperience/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V

    .line 22
    return-object v6
.end method
