.class Lcom/android/screenshot/longshot/state/AbsMoveState$2;
.super Ljava/lang/Object;
.source "AbsMoveState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/screenshot/longshot/state/AbsMoveState;->executeMove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/screenshot/longshot/state/AbsMoveState;


# direct methods
.method constructor <init>(Lcom/android/screenshot/longshot/state/AbsMoveState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/screenshot/longshot/state/AbsMoveState;

    .line 62
    iput-object p1, p0, Lcom/android/screenshot/longshot/state/AbsMoveState$2;->this$0:Lcom/android/screenshot/longshot/state/AbsMoveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/android/screenshot/longshot/state/AbsMoveState$2;->this$0:Lcom/android/screenshot/longshot/state/AbsMoveState;

    iget-object v0, v0, Lcom/android/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/android/screenshot/longshot/task/MoveTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/screenshot/longshot/state/AbsMoveState$2;->this$0:Lcom/android/screenshot/longshot/state/AbsMoveState;

    iget-object v0, v0, Lcom/android/screenshot/longshot/state/AbsMoveState;->mMoveTask:Lcom/android/screenshot/longshot/task/MoveTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/screenshot/longshot/state/AbsMoveState$2;->this$0:Lcom/android/screenshot/longshot/state/AbsMoveState;

    iget v3, v3, Lcom/android/screenshot/longshot/state/AbsMoveState;->mMoveKeep:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/screenshot/longshot/task/MoveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    :cond_0
    return-void
.end method
