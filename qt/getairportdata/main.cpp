#include "getairportdata.h"

#include <QApplication>
#include <QThread>

QThread *thread1;
QThread *thread2;
QThread *thread3;
QThread *thread4;

//QThread *thread5;
//QThread *thread6;
//QThread *thread7;
//QThread *thread8;

getairportdata *w;
getairportdata *w2;
getairportdata *w3;
getairportdata *w4;

//getairportdata *w5;
//getairportdata *w6;
//getairportdata *w7;
//getairportdata *w8;
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    w = new getairportdata() ;
    w2 = new getairportdata() ;
    w3 = new getairportdata() ;
    w4 = new getairportdata() ;

//    w5 = new getairportdata() ;
//    w6 = new getairportdata() ;
//    w7 = new getairportdata() ;
//    w8 = new getairportdata() ;



    thread1 = QThread::create([]{
        w -> fileread(4,1);
    });

    thread2 = QThread::create([]{
        w2 -> fileread(4,2);
    });

    thread3 = QThread::create([]{
        w3 -> fileread(4,3);
    });

    thread4 = QThread::create([]{
        w4 -> fileread(4,4);
    });


//    thread5 = QThread::create([]{
//        w -> fileread(8,5);
//    });

//    thread6 = QThread::create([]{
//        w2 -> fileread(8,6);
//    });

//    thread7 = QThread::create([]{
//        w3 -> fileread(8,7);
//    });

//    thread8 = QThread::create([]{
//        w4 -> fileread(8,8);
//    });
    thread1 -> start();
    thread2 -> start();
    thread3 -> start();
    thread4 -> start();

//    thread5 -> start();
//    thread6 -> start();
//    thread7 -> start();
//    thread8 -> start();


//    w.show();
    return a.exec();
}
