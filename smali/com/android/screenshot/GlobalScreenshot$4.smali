.class Lcom/android/screenshot/GlobalScreenshot$4;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
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

    .line 1148
    iput-object p1, p0, Lcom/android/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/android/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/screenshot/GlobalScreenshot;->access$800(Lcom/android/screenshot/GlobalScreenshot;)Lcom/android/screenshot/ScreenshotSelectorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/screenshot/ScreenshotSelectorView;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/screenshot/GlobalScreenshot$4;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/screenshot/GlobalScreenshot;->access$800(Lcom/android/screenshot/GlobalScreenshot;)Lcom/android/screenshot/ScreenshotSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/screenshot/ScreenshotSelectorView;->requestFocus()Z

    .line 1153
    return-void
.end method
