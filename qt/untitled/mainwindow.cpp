#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);



//    timer = new QTimer(this);
//    connect (timer, SIGNAL(timeout()),this, SLOT(myfunction()));
//    timer->start(1000);

    int a = faktoriyel(4);
    qDebug() << a ;
    qDebug() << "islem tamam";


    //QPixmap pixmap("C:/users/nartc/Desktop/splash.jpg");
    //QSplashScreen splash(pixmap);
    //splash.show();
    //qDebug() << "girdi" ;
    //QTimer::singleShot(5000, &splash, &QWidget::close);
    //connect(timer, SIGNAL(close()),splash,SLOT(close()));
    //splash.close();
    //QTimer::stop(&splash, &QWidget::close);




}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::myfunction()
{
    qDebug() << "update" ;
    ui -> label ->setText("Loading");
}

void MainWindow::splashclose()
{
    splash.close();
}


void MainWindow::on_pushButton_clicked()
{

//    QString plainsayi = ui -> plainTextEdit -> toPlainText();
//    qDebug() << plainsayi ;
//    int sayi;
//    sayi = plainsayi.toInt();
//    qDebug() << sayi;
//    int fac = faktoriyel(sayi);
//    qDebug() << fac ;
//    ui -> label -> setText("deneme");



   // ui -> checkBox ->stateChanged();
    timer ->stop();
    ui -> label -> setText("");


}

int MainWindow::faktoriyel(int a)
{
    if (a>1){
        QThread::msleep(1000);
    return a * faktoriyel(a-1);
}
    else
        return 1;
}

int MainWindow::uzunislem(int a)
{
    if (a>1){
    QThread::msleep(100);
    return a - uzunislem(a - 1);

    }

    else return 1;
}

void MainWindow::on_pushButton_2_clicked()
{
    qDebug() << "clicked";
}


void MainWindow::on_checkBox_stateChanged(int arg1)
{

}

