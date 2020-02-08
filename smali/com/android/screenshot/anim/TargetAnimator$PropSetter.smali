.class Lcom/android/screenshot/anim/TargetAnimator$PropSetter;
.super Ljava/util/HashMap;
.source "TargetAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/screenshot/anim/TargetAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropSetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/reflect/Method;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/screenshot/anim/TargetAnimator;


# direct methods
.method private constructor <init>(Lcom/android/screenshot/anim/TargetAnimator;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/screenshot/anim/TargetAnimator$PropSetter;->this$0:Lcom/android/screenshot/anim/TargetAnimator;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/screenshot/anim/TargetAnimator;Lcom/android/screenshot/anim/TargetAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/screenshot/anim/TargetAnimator;
    .param p2, "x1"    # Lcom/android/screenshot/anim/TargetAnimator$1;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/screenshot/anim/TargetAnimator$PropSetter;-><init>(Lcom/android/screenshot/anim/TargetAnimator;)V

    return-void
.end method
