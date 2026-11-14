QT += core gui widgets network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

!android {
    QT += printsupport
}

TARGET = Coil64
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    meander_pcb.cpp \
    mthread_calculate.cpp \
    about.cpp \
    aircoretoroid.cpp \
    al.cpp \
    amidon.cpp \
    bandspread.cpp \
    bandspread_utils.cpp \
    bessel.cpp \
    coupledcoil.cpp \
    crossover.cpp \
    ecore.cpp \
    ferrite_rod.cpp \
    find_permeability.cpp \
    loop.cpp \
    multiloop.cpp \
    multiloop_utils.cpp \
    multisection.cpp \
    options.cpp \
    potcore.cpp \
    resolve_q.cpp \
    resolve_srf_cs.cpp \
    resolves.cpp \
    rf_toroid.cpp \
    rmcore.cpp \
    scdockwidget.cpp \
    shield.cpp \
    system_functions.cpp \
    ucore.cpp

HEADERS += \
    mainwindow.h \
    meander_pcb.h \
    mthread_calculate.h \
    about.h \
    aircoretoroid.h \
    al.h \
    amidon.h \
    bandspread.h \
    bandspread_utils.h \
    bessel.h \
    coupledcoil.h \
    crossover.h \
    definitions.h \
    ecore.h \
    ferrite_rod.h \
    find_permeability.h \
    loop.h \
    multiloop.h \
    multiloop_utils.h \
    multisection.h \
    options.h \
    potcore.h \
    proxystyle.h \
    resolve_q.h \
    resolve_srf_cs.h \
    resolves.h \
    rf_toroid.h \
    rmcore.h \
    scdockwidget.h \
    shield.h \
    spline.h \
    system_functions.h \
    ucore.h \
    version.h

FORMS += \
    mainwindow.ui \
    meander_pcb.ui \
    about.ui \
    aircoretoroid.ui \
    al.ui \
    amidon.ui \
    bandspread.ui \
    coupledcoil.ui \
    crossover.ui \
    ecore.ui \
    ferrite_rod.ui \
    find_permeability.ui \
    loop.ui \
    multiloop.ui \
    multisection.ui \
    options.ui \
    potcore.ui \
    rf_toroid.ui \
    rmcore.ui \
    scdockwidget.ui \
    shield.ui \
    ucore.ui

RESOURCES += \
    res.qrc

android {
    CONFIG += deployqt
    ANDROID_VERSION_CODE = 1
    ANDROID_VERSION_NAME = 2.4.39
    ANDROID_MIN_SDK_VERSION = 23
}
