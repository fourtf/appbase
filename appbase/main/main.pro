#-------------------------------------------------
#
# Project created by QtCreator 2018-11-19T19:03:22
#
#-------------------------------------------------

!AB_INCLUDE {
    #QT += core gui widgets
    #TARGET = main
    #TEMPLATE = app
    #SOURCES += main.cpp
}


#DEFINES += QT_DEPRECATED_WARNINGS
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000

macx {
    # osx
    CONFIG += c++14
    DEFINES += PAJLADA_SETTINGS_BOOST_OPTIONAL
} else {
    CONFIG += c++17
    win32-msvc* {
        # win32 msvc
        QMAKE_CXXFLAGS += /std:c++17
    } else {
        # clang/gcc on linux or win32
        QMAKE_CXXFLAGS += -std=c++17
    }
}

include(../warnings.pri)
include(../lib/winsdk.pri)
include(../lib/boost.pri)
include(../lib/rapidjson.pri)
include(../lib/serialize.pri)
include(../lib/signals.pri)
include(../lib/settings.pri)

debug {
    DEFINES += QT_DEBUG
}

linux {
    LIBS += -lrt
    QMAKE_LFLAGS += -lrt
}

macx {
    INCLUDEPATH += /usr/local/include
    INCLUDEPATH += /usr/local/opt/openssl/include
    LIBS += -L/usr/local/opt/openssl/lib
}

# https://bugreports.qt.io/browse/QTBUG-27018
equals(QMAKE_CXX, "clang++")|equals(QMAKE_CXX, "g++") {
    TARGET = bin/appbase
}

SOURCES += \
        $$PWD/widgets/BaseWidget.cpp \
        #widgets/BaseWindow.cpp \
        #widgets/Label.cpp

HEADERS += \
        $$PWD/widgets/BaseWidget.hpp \
        #widgets/BaseWindow.hpp
        #widgets/Label.hpp
