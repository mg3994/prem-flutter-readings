import java.util.Properties
import java.io.FileInputStream

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

android {
    namespace = "com.palmistrylive.readings"
    compileSdk = 36 // flutter.compileSdkVersion
    ndkVersion = "29.0.13846066"// ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    signingConfigs {
        create("release") {
           // keyAlias = keystoreProperties["keyAlias"] as String
           // keyPassword = keystoreProperties["keyPassword"] as String
           // storeFile = keystoreProperties["storeFile"]?.let { file(it) }
           // storePassword = keystoreProperties["storePassword"] as String
            keyAlias = 'key0'
            keyPassword = '123456'
            storeFile = file('palm.jks')
            storePassword = '123456'
        }
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.palmistrylive.readings"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = 36 // flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("release")
             ndk {
                debugSymbolLevel = "FULL" // Retains full debug symbols
            }
        }
    }
}

flutter {
    source = "../.."
}
