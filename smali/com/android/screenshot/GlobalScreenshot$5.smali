.class Lcom/android/screenshot/GlobalScreenshot$5;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/screenshot/GlobalScreenshot;

    .line 1233
    iput-object p1, p0, Lcom/android/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/android/screenshot/GlobalScreenshot$5;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/screenshot/GlobalScreenshot;->access$900(Lcom/android/screenshot/GlobalScreenshot;)V

    .line 1237
    return-void
.end method
