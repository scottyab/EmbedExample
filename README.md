# EmbedExample

Standalone example app and library that uses [kezong/fat-aar-android plugin](https://github.com/kezong/fat-aar-android). Created to diagnose build issue we are seeing with production project

* `/app` - is the basic app from the create project wizard in Android Studio. Implements custom view from MyLibrary
* `/mylibrary` - library project that is also published as an AAR file. 
    - 3 BuildTypes, debug, release which match with the debug, release of the app. And `aar` which uses the embed dependency keyword ` aarEmbed "com.github.chrisbanes:PhotoView:2.3.0"`.

# Building

* `/gradlew assembleRelease` will build/sign the release variant of the app
* `/gradlew publishToMavenLocal` will publish the mylibrary module to local maven repo (i.e ~/.m2/repository/com/scottyab/mylibrary/1.0.1-SNAPSHOT/mylibrary-1.0.1-SNAPSHOT.aar).


Notes:
* Obfuscation - both the app and mylibrary use R8 `minifyEnabled=true`
