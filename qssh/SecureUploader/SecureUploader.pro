

QT       += core network

TARGET = SecureUploader
TEMPLATE = app

INCLUDEPATH = $$PWD/../../src/libs/ssh/

SOURCES += \
    main.cpp \
    securefileuploader.cpp

HEADERS  += \
    securefileuploader.h

include(../../qssh.pri) ## Required for IDE_LIBRARY_PATH and qtLibraryName
LIBS += -L$$IDE_LIBRARY_PATH -l$$qtLibraryName(botan-2) -l$$qtLibraryName(QSsh)
