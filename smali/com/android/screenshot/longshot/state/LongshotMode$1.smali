.class Lcom/android/screenshot/longshot/state/LongshotMode$1;
.super Ljava/lang/Object;
.source "LongshotMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/screenshot/longshot/state/LongshotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/screenshot/longshot/state/LongshotMode;


# direct methods
.method constructor <init>(Lcom/android/screenshot/longshot/state/LongshotMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/screenshot/longshot/state/LongshotMode;

    .line 728
    iput-object p1, p0, Lcom/android/screenshot/longshot/state/LongshotMode$1;->this$0:Lcom/android/screenshot/longshot/state/LongshotMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 731
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/LongshotMode$1;->this$0:Lcom/android/screenshot/longshot/state/LongshotMode;

    sget-object v1, Lcom/android/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/android/screenshot/longshot/state/LongshotState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/screenshot/longshot/state/LongshotMode;->updateState(Lcom/android/screenshot/longshot/state/LongshotState;Lcom/android/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 732
    return-void
.end method
