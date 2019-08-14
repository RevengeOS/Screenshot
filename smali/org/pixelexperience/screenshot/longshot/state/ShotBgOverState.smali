.class public Lorg/pixelexperience/screenshot/longshot/state/ShotBgOverState;
.super Lorg/pixelexperience/screenshot/longshot/state/ShotBgNextState;
.source "ShotBgOverState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotBgOverState"


# direct methods
.method public constructor <init>(Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;Lorg/pixelexperience/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "stateContext"    # Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lorg/pixelexperience/screenshot/longshot/util/MovePoint;

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/pixelexperience/screenshot/longshot/state/ShotBgNextState;-><init>(Lorg/pixelexperience/screenshot/longshot/state/LongshotContext;Lorg/pixelexperience/screenshot/longshot/util/MovePoint;)V

    .line 15
    sget-object v0, Lorg/pixelexperience/screenshot/longshot/util/Configs;->OFFSET_SHOT_BGOVER:Lorg/pixelexperience/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/pixelexperience/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/pixelexperience/screenshot/longshot/state/ShotBgOverState;->mOffset:I

    .line 16
    sget-object v0, Lorg/pixelexperience/screenshot/longshot/util/Configs;->CAPTURE_OVER_DELAY:Lorg/pixelexperience/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/pixelexperience/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/pixelexperience/screenshot/longshot/state/ShotBgOverState;->mCaptureDelay:I

    .line 17
    return-void
.end method


# virtual methods
.method protected getNextState()Lorg/pixelexperience/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 24
    sget-object v0, Lorg/pixelexperience/screenshot/longshot/state/LongshotState;->STITCH_BGOVER:Lorg/pixelexperience/screenshot/longshot/state/LongshotState;

    return-object v0
.end method
