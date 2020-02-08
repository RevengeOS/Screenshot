.class Lcom/android/screenshot/longshot/task/MoveTask$ScreenInfo;
.super Ljava/lang/Object;
.source "MoveTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/screenshot/longshot/task/MoveTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenInfo"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mInfo:Lcom/android/screenshot/util/ImageInfo;

.field final synthetic this$0:Lcom/android/screenshot/longshot/task/MoveTask;


# direct methods
.method public constructor <init>(Lcom/android/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 382
    iput-object p1, p0, Lcom/android/screenshot/longshot/task/MoveTask$ScreenInfo;->this$0:Lcom/android/screenshot/longshot/task/MoveTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p2, p0, Lcom/android/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 384
    new-instance p1, Lcom/android/screenshot/util/ImageInfo;

    const-string v0, "Dump"

    invoke-direct {p1, v0, p3}, Lcom/android/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/android/screenshot/util/ImageInfo;

    .line 385
    return-void
.end method
