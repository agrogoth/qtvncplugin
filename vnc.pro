TARGET = qvnc

QT += \
    core-private network gui-private \
    service_support-private theme_support-private fb_support-private \
    eventdispatcher_support-private fontdatabase_support-private

qtHaveModule(input_support-private): \
    QT += input_support-private

DEFINES += QT_NO_FOREACH

SOURCES = \
    main.cpp \
    qrfbpngencoder.cpp \
    qvncintegration.cpp \
    qvncscreen.cpp \
    qvnc.cpp \
    qvncclient.cpp \
    qvncopenglcontext.cpp \
    qvncwindow.cpp

HEADERS = \
    qrfbpngencoder.h \
    qvncintegration.h \
    qvncscreen.h \
    qvnc_p.h \
    qvncclient.h \
    qvncopenglcontext.h \
    qvncwindow.h

OTHER_FILES += vnc.json

LIBS += -lOSMesa

PLUGIN_TYPE = platforms
PLUGIN_CLASS_NAME = QVncIntegrationPlugin
!equals(TARGET, $$QT_DEFAULT_QPA_PLUGIN): PLUGIN_EXTENDS = -
load(qt_plugin)
