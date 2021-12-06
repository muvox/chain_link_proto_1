QT += core quick androidextras widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    android/src/MusicManager.java \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle.properties \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml \
    components/images/NWA_100Mile_CoverAr_Source_1000164381_1024x.jpg \
    components/images/appMenu.png \
    components/images/appMenu.svg \
    components/images/google_maps.png \
    components/images/google_maps.svg \
    components/images/next-previous.png \
    components/images/pause.png \
    components/images/place_holder.png \
    components/images/play.png \
    components/images/spotify.svg \
    components/images/storytel.png \
    components/images/storytel.svg \
    components/images/strava.png \
    components/images/strava.svg

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
    ANDROID_PACKAGE_SOURCE_DIR = \
        $$PWD/android
    OTHER_FILES += android/src/MusicManager.java
}

android{
    QT += androidextras

    MODULE_ANDROID_SOURCES.path = /
    MODULE_ANDROID_SOURCES.files = $$files($$PWD/android/*)

    INSTALLS += MODULE_ANDROID_SOURCES

    DISTFILES += \
            android/src/systems.arboreus.usingjava_v1/MyJavaClass.java
}

HEADERS += \
    IntentHandler.h \
    MusicManager.h

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
