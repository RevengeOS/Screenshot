.class Lcom/android/screenshot/longshot/state/MainState$2;
.super Ljava/lang/Object;
.source "MainState.java"

# interfaces
.implements Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/screenshot/longshot/state/MainState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/screenshot/longshot/state/MainState;


# direct methods
.method constructor <init>(Lcom/android/screenshot/longshot/state/MainState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/screenshot/longshot/state/MainState;

    .line 33
    iput-object p1, p0, Lcom/android/screenshot/longshot/state/MainState$2;->this$0:Lcom/android/screenshot/longshot/state/MainState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateState()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/MainState$2;->this$0:Lcom/android/screenshot/longshot/state/MainState;

    iget-object v0, v0, Lcom/android/screenshot/longshot/state/MainState;->mImageCache:Lcom/android/screenshot/longshot/cache/ImageCache;

    iget-object v1, p0, Lcom/android/screenshot/longshot/state/MainState$2;->this$0:Lcom/android/screenshot/longshot/state/MainState;

    iget-object v1, v1, Lcom/android/screenshot/longshot/state/MainState;->mFirstCache:Lcom/android/screenshot/longshot/cache/ImageCache;

    invoke-static {v0, v1}, Lcom/android/screenshot/longshot/bitmap/BitmapUtils;->addBitmaps(Ljava/util/List;Ljava/util/List;)V

    .line 37
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/MainState$2;->this$0:Lcom/android/screenshot/longshot/state/MainState;

    iget-object v0, v0, Lcom/android/screenshot/longshot/state/MainState;->mImageCache:Lcom/android/screenshot/longshot/cache/ImageCache;

    iget-object v1, p0, Lcom/android/screenshot/longshot/state/MainState$2;->this$0:Lcom/android/screenshot/longshot/state/MainState;

    iget-object v1, v1, Lcom/android/screenshot/longshot/state/MainState;->mJoinCache:Lcom/android/screenshot/longshot/cache/JoinCache;

    invoke-static {v0, v1}, Lcom/android/screenshot/longshot/bitmap/BitmapUtils;->pickBitmaps(Ljava/util/List;Ljava/util/List;)V

    .line 38
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/MainState$2;->this$0:Lcom/android/screenshot/longshot/state/MainState;

    iget-object v0, v0, Lcom/android/screenshot/longshot/state/MainState;->mStateContext:Lcom/android/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/android/screenshot/longshot/state/LongshotState;->SAVE:Lcom/android/screenshot/longshot/state/LongshotState;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/screenshot/longshot/state/LongshotContext;->updateState(Lcom/android/screenshot/longshot/state/LongshotState;Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 39
    return-void
.end method
