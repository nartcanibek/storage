#ifndef ODEV2_MYLIST_H
#define ODEV2_MYLIST_H
#include <stdlib.h>
#include <iostream>
#include <string>
using namespace std;

class listnode
{
public:
    string s;
    int count;
    listnode *next;
    listnode *prev;
    listnode();  // 0,2,4,6,8
    listnode(const string & ss, const int &c); //1,3,5,7,9
};

class mylist
{
public:
    // Default constructor
    mylist();

    //Destructor
    ~mylist();  //0,1,2,3,4,5,6,7,8,9

    //pointeri verilen düğüm listenin elemanı ise True, değilse False dönmeli.
    bool isElement(listnode* ptr);  //0,1,2,3,4,5,6,7,8,9

    //İlk konuma yeni düğüm yerleştirmeli
    void insertfront(const string &s, const int & c);  //0,1

    //Son konuma yeni düğüm yerleştirmeli
    void insertback(const string &s, const int & c);   //2,3

    //ptr ile gösterilen düğümün soluna yeni düğüm oluşturmalı
    void insertbefore(listnode *ptr, const string &s, const int &c); //4,5

    //ptr ile gösterilen düğümün sağına yeni düğüm oluşturmalı
    void insertafter(listnode *ptr, const string &s, const int &c);  //6,7

    //pos index konumuna yeni düğüm  oluşturmalı
    void insertpos(const int & pos, const string &s, const int &c);  //8,9

    //ilk düğümü dönmeli
    listnode* front() const;  //0,9

    //Son düğümü dönmeli
    listnode* back() const;   //1,8

    //listenin boyutunu dönmeli
    int length() const;       //2,7

    //ilk elemanı listeden silmeli
    void removefront();       //3,6

    //son elemanı listeden silmeli
    void removeback();        //4,5

    mylist(const mylist & l);   //0,3,6

    mylist& operator=(const mylist  &l);  //1,4,7

    //pointer'i verilen düğümler eğer her ikisi de listede bulunuyorsa, yerleri değiştirilip True dönecek, değilse False.
    bool swap(listnode* ptr1, listnode* ptr2); //2,9

    //Pointer'i verilen düğümler eğer her ikisi de listede bulunuyorsa, Aşağıdaki işlemler yapılıp True dönecek, değilse False.
    //count1 ve s1 ilk düğümün üye alanları; count2 ve s2 ikinci düğümün üye alanları olmak üzere count1 += count2, ve s1+= s2 işlemi yapılacak.
    //Sonra ptr2'nin gösterdiği düğüm silinecek.
    bool mergenodes(listnode* ptr1, listnode* ptr2);  //5,8


    ////s parametresi, üye alandaki s değerine eşit olan bir düğüm varsa onu bul ve döndür
    listnode *search(const string &s); //0,5

    //count değeri en büyük olan düğümü bul
    listnode *findmaxcount();   //1,6

    void remove(listnode * ptr);  //2,7

    //count değeri en büyük olan düğümü sil
    void removemaxcount();  //3,8

    //s parametresi, üye alandaki s değerine eşit olan bir düğüm varsa değerini 1 artır. Yoksa False dön.
    bool searchandinc (const string &s);  //4,9

private:
    listnode *head;
    listnode *tail;
    int size;
};
#endif //ODEV2_MYLIST_H
