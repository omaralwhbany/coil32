#include "mainwindow.h"
#include <QApplication>
#include <QFont>
#include <QScreen>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication::setAttribute(Qt::AA_UseHighDpiPixmaps);
#endif

    QApplication a(argc, argv);

    // تحسين حجم الخط لشاشات الهواتف اللمسية
    QFont font = a.font();
    #ifdef Q_OS_ANDROID
    font.setPointSize(11);
    #else
    font.setPointSize(10);
    #endif
    a.setFont(font);

    MainWindow w;
    
#ifdef Q_OS_ANDROID
    w.showMaximized();
#else
    w.show();
#endif

    return a.exec();
}
