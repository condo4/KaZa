QT += quick
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

include(KnxQApp/KnxQApp.pri)


SOURCES += \
    main.cpp


RESOURCES += qml.qrc


# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

android{
    message(- for android)
    QT += androidextras
    OTHER_FILES += $ANDROID_FILES
    LIBS += -ldl "$$PWD/ExternalLibs/android/libssh2/lib/libssh2.a"  -ldl "$$PWD/ExternalLibs/android/openssl/lib/libcrypto.a"  -static-libgcc
    INCLUDEPATH += "$$PWD/ExternalLibs/android/libssh2/include/"
}
else:unix{
    message(- for unix)
    LIBS += -lssh2 -lgcrypt -lcrypto -lfontconfig  -ljpeg -lz
}


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

HEADERS += \
    networkconfiguration.h
