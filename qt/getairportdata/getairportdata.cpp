#include "getairportdata.h"
#include <QFile>
#include <QTextStream>
#include <regex>
#include <QRegularExpression>
#include <QDebug>

getairportdata::getairportdata(QWidget *parent)
    : QWidget(parent)
{

}

void getairportdata::fileread(int fraction, int seq)
{
    QFile file("C:\\Users/nartc/Desktop/qt/apt.dat");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
            return;

    file.seek(seq * (file.size() / fraction) - (file.size() / fraction) + 1);
//        while (!file.atEnd()) {
            while (file.pos() < seq * (file.size() / fraction))
            {
            line = file.readLine();
            stringcleaner();
        }
            qDebug() << "bitti" ;
}

void getairportdata::stringcleaner()
{

    if(line[0] == '1' && line[1] == ' '){
//        qDebug() << line[13] << line[14] << line[15] << line[16] ;
        if(line[13] == 'K' && line[14] == 'P' && line[15] == 'N' && line[16] == 'N')
            qDebug() << "girdi" ;
    }
//QRegularExp ression reg(" ") ;
//QString sonuc = QRegularExpression::
}

getairportdata::~getairportdata()
{
}

