### These are some common rules we use in our library projects

### KOTLIN
-keepattributes *Annotation*
-keepattributes InnerClasses
-dontwarn org.jetbrains.annotations.**
-dontwarn kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
-dontwarn kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor
-dontwarn kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
-dontwarn kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
-dontwarn kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl
-dontwarn kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder
-dontwarn kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil
-dontwarn kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor
-dontwarn kotlin.reflect.jvm.internal.impl.types.DescriptorSubstitutor
-dontwarn kotlin.reflect.jvm.internal.impl.types.TypeConstructor
-dontwarn kotlin.reflect.jvm.internal.DefaultConstructorMaker
-dontwarn kotlin.coroutines.experimental.Continuation

-keep class kotlin.Unit { *; }
-keep class kotlin.collections.CollectionsKt { *; }

# The Android pre-handler for exceptions is loaded reflectively (via ServiceLoader).
# https://github.com/Kotlin/kotlinx.coroutines/issues/214
-keep class kotlinx.coroutines.android.AndroidExceptionPreHandler { *; }
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}

-keepclassmembernames class kotlinx.** {
    volatile <fields>;
}

