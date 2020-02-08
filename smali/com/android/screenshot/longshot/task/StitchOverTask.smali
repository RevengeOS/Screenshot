.class public Lcom/android/screenshot/longshot/task/StitchOverTask;
.super Lcom/android/screenshot/longshot/task/StitchNextTask;
.source "StitchOverTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchOverTask"


# direct methods
.method public constructor <init>(Lcom/android/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/android/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 0
    .param p1, "listener"    # Lcom/android/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lcom/android/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/screenshot/longshot/task/StitchNextTask;-><init>(Lcom/android/screenshot/longshot/task/JoinTask$OnJoinListener;Lcom/android/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lcom/android/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 25
    new-instance v0, Lcom/android/screenshot/longshot/match/StitchOverMatcher;

    invoke-direct {v0, p1, p2}, Lcom/android/screenshot/longshot/match/StitchOverMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
