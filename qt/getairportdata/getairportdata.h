#ifndef GETAIRPORTDATA_H
#define GETAIRPORTDATA_H

#include <QWidget>

class getairportdata : public QWidget
{
    Q_OBJECT

public:
    getairportdata(QWidget *parent = nullptr);
    void fileread(int fraction, int seq);
    void stringcleaner();
    ~getairportdata();
    QString line;
};
#endif // GETAIRPORTDATA_H
