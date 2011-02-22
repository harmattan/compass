# Copyright (c) 2011 Nokia Corporation.

QT       += core gui declarative opengl
CONFIG   += mobility
MOBILITY += sensors systeminfo

TARGET = compass
TEMPLATE = app

VERSION = 0.1

HEADERS += compassfilter.h \
           arc.h \
           mainwindow.h

SOURCES += main.cpp \
           compassfilter.cpp \
           mainwindow.cpp

OTHER_FILES += qml/*.qml \
               qml/CalibrationView.qml \
    qml/SettingsPane.qml \
    qml/Button.qml

RESOURCES = compass.qrc

symbian {
    TARGET = Compass
    TARGET.CAPABILITY = NetworkServices

    # To lock the application to landscape orientation
    LIBS += -lcone -leikcore -lavkon
    ICON = icons/compass.svg
}
