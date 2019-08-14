.class public Lorg/pixelexperience/screenshot/longshot/task/StitchBgOverTask;
.super Lorg/pixelexperience/screenshot/longshot/task/StitchBgNextTask;
.source "StitchBgOverTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchBgOverTask"


# direct methods
.method public constructor <init>(Lorg/pixelexperience/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/pixelexperience/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 0
    .param p1, "listener"    # Lorg/pixelexperience/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lorg/pixelexperience/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/pixelexperience/screenshot/longshot/task/StitchBgNextTask;-><init>(Lorg/pixelexperience/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/pixelexperience/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lorg/pixelexperience/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 25
    new-instance v0, Lorg/pixelexperience/screenshot/longshot/match/StitchBgOverMatcher;

    invoke-direct {v0, p1, p2}, Lorg/pixelexperience/screenshot/longshot/match/StitchBgOverMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
