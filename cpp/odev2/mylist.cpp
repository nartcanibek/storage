#include "mylist.h"
#include <stdlib.h>
#include <iostream>
#include <string>
using namespace std;

//Aşağıda bir bağlı liste(linkedlist) veri yapısı için sınıf arayüzleri verilmiştir.
// Her üye fonksiyonun yanında yorum olarak öğrenci numarası ile ilgili kriter belirlenmiştir
// !!! Sadece Öğrenci numaranızın son rakamının belirtildiği üye fonksiyonları implement etmeniz beklenmektedir.

// Sizden istenen fonksiyonlar dışındakilerin zaten var olduğunu farzedip kendi fonksiyonlarınızda kullanabilirsiniz.
// Yardımcı olacaksa bu listede olmayan, ek başka fonksiyonlar yazabilirsiniz.

// Buraya Ad Soyad ve Öğrenci Numaranızın tamamını yazınız: Furkan Nart Canıbek

listnode::listnode()
{
    this -> s = "default";
    this -> count = 0;
    this -> next = NULL;
    this -> prev = NULL;

}
listnode::listnode(const string & ss, const int &c) {
    this->s = ss;
    this->count  = c;
    this->next = NULL;
    this->prev = NULL;
}
mylist::mylist()
{
    this -> head = NULL;
    this -> tail = NULL;
    this -> size = 0;
}
mylist::~mylist()
{
    listnode *t,*t1;
    t = head;
    while (t != NULL){
        t1 = t;
        delete t;
        t = t1 ->next  ;
    }
}
bool mylist::isElement(listnode* ptr){
    listnode *t;
    t = head;
    while(t != NULL)
    {
        if (t == ptr)
            return true;

        t = t ->next;
    }
    return false;
}
void mylist::insertfront(const string &s, const int & c)
{
    listnode t(s,c);
    this->head = &t;
}
void mylist::insertback(const string &s, const int & c)
{
    listnode t(s,c);
    this->tail = &t;
}
void mylist::insertbefore(listnode *ptr, const string &s, const int &c)
{
    listnode *t;
    t -> prev = ptr -> prev;
    t -> next = ptr;
    ptr-> prev = t;
    t -> s = s;
    t -> count = c;
    if (this -> head == ptr)
        this -> head = t;

}
void mylist::insertafter(listnode *ptr, const string &s, const int &c)
{
    listnode *t;
    t -> next = ptr -> next;
    t -> prev = ptr;
    ptr-> next = t;
    t -> s = s;
    t -> count = c;
    if (this -> tail == ptr)
        this -> tail = t;
}
void mylist::insertpos(const int & pos, const string &s, const int &c)
{
    listnode *t1,*t2;
    t1 = head;
    for (int x=1;x<pos;x++)
        t1 = t1 -> next;
    t2 -> s = s;
    t2 -> count = c;


}
listnode* mylist::front() const
{
    return head;
}
listnode* mylist::back() const
{
    return tail;
}
int mylist::length() const
{
    int length = 0;
    listnode* t;
    t = head;
    while(t != NULL)
    {
        ++length;
        t = t ->next;
    }
}
void mylist::removefront(){
    listnode *t,*t1;
    t = head;
    t1 = t ->next;
    t1 ->prev = NULL;
    delete t;
    head = t1;
}
void mylist::removeback()
{
    listnode *t,*t1;
    t = tail;
    t1 = t ->prev;
    t1 ->next = NULL;
    delete t;
    tail = t1;
}
mylist::mylist(const mylist & l){
    this->head = l.front();
    this->tail = l.back();
    this->size = l.length();
}
mylist& mylist::operator=(const mylist  &l){
    this->~mylist();
    this -> head = NULL;
    this -> tail =  NULL;
    this-> head = l.front();
    this-> tail = l.back();
    this-> size = l.length();
}
bool mylist::swap(listnode* ptr1, listnode* ptr2){
    if (this->isElement(ptr1) == 1 && this->isElement(ptr2))
    {
        listnode *t1,*t2;
        int a;
        string b;
        t1 = ptr1 ->next ;
        t2 = ptr1 ->prev ;
        a = ptr1 ->count;
        b = ptr1 ->s ;
        ptr1 ->next = ptr2 ->next;
        ptr1 ->prev = ptr2 ->prev;
        ptr1 ->count = ptr2 ->count;
        ptr1 ->s = ptr2 ->s;
        ptr2 ->next = t1;
        ptr2 ->prev = t2;
        ptr2 ->count = a;
        ptr2 ->s = b;
        return true;
    }
return false;
}
bool mylist::mergenodes(listnode* ptr1, listnode* ptr2)
{
  if (this->isElement(ptr1) && this->isElement(ptr2))
  {
      ptr1 ->count += ptr2 ->count;
      ptr1 ->s += ptr2 ->s;
      this ->remove(ptr2);
      return true;
  }
  else
      return false;
}
listnode *mylist::search(const string &s)
{
    listnode *t = head;

    while ((t!=NULL) && (t->s != s))
    {
        t = t->next;
    }
    return t;
}
listnode *mylist::findmaxcount(){
    listnode *t,*tmax ;
    t = head;
    int max = t ->count;
    while ((t!=NULL))
    {
        if(t->count > max)
        {
            max = t ->count;
            tmax = t;
        }
        t = t->next;
    }
    return tmax;
}
void mylist::remove(listnode * ptr){
    listnode *t,*t1,*t2;
    t = ptr;
    t1 = t->prev;
    t2 = t->next;
    delete t;
    t1 -> next = t2;
    t2 -> prev = t1;

}
bool mylist::searchandinc (const string &s){

    listnode *t;
    t = this -> search(s);
    if (t != NULL)
    {
        t->count = t->count + 1;
        return true;
    }
    else
        return false;
}

void mylist::removemaxcount(){
    listnode *t,*t1,*t2;
    t = findmaxcount();
    t1 = t->prev;
    t2 = t->next;
    delete t;
    t1 -> next = t2;
    t2 -> prev = t1;

}
int main ()
{
    mylist m;
    listnode t1("a",1),t2("b",2),t3("c",3);
    m.insertfront("ilk",11);

    return 0;
}