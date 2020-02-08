.class Lcom/android/screenshot/GlobalScreenshot$7;
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

    .line 1333
    iput-object p1, p0, Lcom/android/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1337
    iget-object v0, p0, Lcom/android/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/screenshot/GlobalScreenshot;->access$1700(Lcom/android/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1338
    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "mScreenBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-void

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/android/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/screenshot/GlobalScreenshot;->access$1600(Lcom/android/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1347
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "screenshot_sound"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1348
    iget-object v1, p0, Lcom/android/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/screenshot/GlobalScreenshot;->access$1900(Lcom/android/screenshot/GlobalScreenshot;)Landroid/media/MediaActionSound;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 1352
    :cond_1
    iget-object v1, p0, Lcom/android/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/screenshot/GlobalScreenshot;->access$1800(Lcom/android/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1353
    iget-object v1, p0, Lcom/android/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/screenshot/GlobalScreenshot;->access$1800(Lcom/android/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->buildLayer()V

    .line 1354
    iget-object v1, p0, Lcom/android/screenshot/GlobalScreenshot$7;->this$0:Lcom/android/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/screenshot/GlobalScreenshot;->access$2000(Lcom/android/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1355
    return-void
.end method
