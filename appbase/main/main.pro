#-------------------------------------------------
#
# Project created by QtCreator 2018-11-19T19:03:22
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = main
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        widgets/BaseWidget.cpp \
        #widgets/BaseWindow.cpp \
        widgets/Label.cpp

HEADERS += \
        widgets/BaseWidget.hpp \
        #widgets/BaseWindow.hpp
        widgets/Label.hpp

include(../deps/boost.pri)

# Optional dependency on Windows SDK 7
!contains(QMAKE_TARGET.arch, x86_64) {
    win32:exists(C:\Program Files\Microsoft SDKs\Windows\v7.1\Include\Windows.h) {
        LIBS += -L"C:\Program Files\Microsoft SDKs\Windows\v7.1\Lib" -ldwmapi

        DEFINES += "USEWINSDK"
        message(Using Windows SDK 7)
    }
}

# Optional dependency on Windows SDK 10
contains(QMAKE_TARGET.arch, x86_64) {
    WIN_SDK_VERSION = $$(WindowsSDKVersion)
    !isEmpty(WIN_SDK_VERSION) {
        !equals(WIN_SDK_VERSION, "\\") {
            DEFINES += "USEWINSDK"
            message(Using Windows SDK 10)
        }
    }
}
