#include "mainwindow.h"

#include <QApplication>
#include <QSplashScreen>
#include <QTimer>


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    /*
    QPixmap pixmap("C:/users/nartc/Desktop/splash.jpg");
    QSplashScreen splash(pixmap);
    splash.show();
    //QTimer::singleShot(5000, &splash, &QWidget::close);
    //connect(this, SIGNAL(timer.close()),this,SLOT(splash.close));
    splash.close();
    //QTimer::stop(&splash, &QWidget::close)
    */

    MainWindow w;
    w.show();
    return a.exec();
}
