#FURKAN NART CANIBEK 191201033
from socket import *
from unicodedata import decimal

from matplotlib.pyplot import flag
import numpy as np
import os
import tqdm

SEPARATOR = "<SEPARATOR>"

#asal sayi kontrolü için fonksiyon
def PrimeCheck(num):

    flag = True

    if num > 1.0:
        for i in np.arange(2.0, num,1.0):
            if (num % i) == 0.0:
               
                flag = False
                
                break

    return flag   

#servera yüklenen dosyaların adlarını tutan array    
filenames = []

#server fonksiyonu
def createServer():
    serversocket = socket(AF_INET, SOCK_STREAM)
    try :
        serversocket.bind(('localhost',8080))
        serversocket.listen(5)
        while(1):
            (clientsocket, address) = serversocket.accept()

            #gelen TCP data headerı
            rd = clientsocket.recv(5000).decode()
            #TCP headerını boşluklara göre parse
            pieces = rd.split("\n")
            pieces2 = pieces[0].split(" ")
            
            #pieces2[0] bize http requestini verir

            #url uzantısı pathname ve variableları ayırmak için ? ile parse
            pathname = pieces[0].split()[1]
            pathname2 = pathname.split("?")
            

            if(pieces2[0] == 'GET'):
                
                if(pathname2[0] == '/isPrime'):
                    
                    #link uzantısında istenen variable'ı aramak için döngü
                    for x in range(len(pathname2)): 
                        
                        stat = False

                        if(pathname2[x][0:6] == 'number'):
                            index = x
                            stat = True
                            break
                    
                    
                    if (stat == True):
                        #istenen variable'ın olduğu indexte variable değerini elde etme       
                        pathname3 = pathname2[index].split("=")
                        
                        
                        var = pathname3[1]
                        
                        var = float(var)

                        #tam sayı kontrolü
                        if(var.is_integer()):

                            var_check = PrimeCheck(var)
                            
                            data = "HTTP/1.1 200 OK\r\n"
                            data += "Content-Type: json; charset=utf-8\r\n"
                            data += "\r\n" 

                            if var_check:
                                data += "Girdiginiz sayi asal.\r\n"
                            else:
                                data += "Girdiginiz sayi asal degil.\r\n"
                            
                        else:

                            data = "HTTP/1.1 400 Bad Request\r\n"
                            data += "Content-Type: json; charset=utf-8\r\n"
                            data += "\r\n" 
                            data += "Lütfen tam sayi giriniz.\r\n"

                    #number parametresi olmaması durumu
                    else:
                        data = "HTTP/1.1 400 Bad Request\r\n"
                        data += "Content-Type: json; charset=utf-8\r\n"
                        data += "\r\n" 
                        data += "Hatali Giris\r\n"
                
                elif(pathname2[0] == '/download'):

                    for x in range(len(pathname2)): 
                        
                        stat_filename0 = False

                        if(pathname2[x][0:8] == 'fileName'):
                            
                            index_filename0 = x
                            stat_filename0 = True
                            break
                    
                    #fileName'in değerini elde etme
                    if (stat_filename0):
                        pathname5 = pathname2[index_filename0].split("=")
                        
                            
                        file_name0 = pathname5[1]

                        #kaydedilmiş dosyalarda bulunursa indirme işlemi başlatılıyor
                        if(file_name0 in filenames):
                            filesize = os.path.getsize(file_name0)
                            clientsocket.send(f"{file_name0}{SEPARATOR}{filesize}".encode())
                            progress = tqdm.tqdm(range(filesize), f"Sending {filename}", unit="B", unit_scale=True, unit_divisor=1024)
                            with open(filename, "rb") as f:
                                while True:
                                    
                                    bytes_read = f.read(4096)
                                    if not bytes_read:
                                        
                                        break
                                    serversocket.sendall(bytes_read)
                                    
                                    progress.update(len(bytes_read))
                            
                            serversocket.close()
                            data = "HTTP/1.1 200 OK\r\n"
                            data += "Content-Type: json; charset=utf-8\r\n"
                            data += "\r\n" 
                            data += "Basarili indirme.\r\n"
                        else:
                            data = "HTTP/1.1 200 OK\r\n"
                            data += "Content-Type: json; charset=utf-8\r\n"
                            data += "\r\n" 
                            data += "Aradiginiz dosya bulunmamadi.\r\n"
                    else:
                        data = "HTTP/1.1 400 Bad Request\r\n"
                        data += "Content-Type: json; charset=utf-8\r\n"
                        data += "\r\n" 
                        data += "fileName parametresi eksik\r\n"
                
                else:
                    data = "HTTP/1.1 404 NOT FOUND\r\n"
                    data += "Content-Type: json; charset=utf-8\r\n"
                    data += "\r\n" 
                    data += "Link mevcut degil.\r\n"
                
            elif (pieces2[0] == 'POST'):

                if(pathname2[0] == '/upload'):
                    
                    #TCP header'ında filename parametresini içeren elemanı bulmak
                    rd2 = rd.split("\n")
                    rd3 = rd2[-4].split("\"")
                    #dosya gönderilmeyen TCP'lerin headerlarında filename içeren eleman bir birim geriye geliyor
                    #bu sebeple rd3 == ['\r'] oluyor
                    #dosya içeren TCP lerde ise rd3 == ['Content..',..,'filename=','dosya.txt'] cinsinden bir string array oluyor
                    #bu yüzden bu statement ile ayrımı yaptım
                    if(len(rd3) > 2):
                        filename = rd3[-2]
                        file = open(filename, "wt")
                        file.write(rd)
                        file.close()
                        filenames.append(filename)
                        
                        print(filenames)
                        data = "HTTP/1.1 200 OK\r\n"
                        data += "Content-Type: json; charset=utf-8\r\n"
                        data += "\r\n" 
                        data += "Dosya yuklemesi basarili.\r\n"
                        

                    else: 
                        
                        data = "HTTP/1.1 200 OK\r\n"
                        data += "Content-Type: json; charset=utf-8\r\n"
                        data += "\r\n" 
                        data += "Yuklenecek dosya bulunamadi.\r\n"
                
                else:
                    data = "HTTP/1.1 404 NOT FOUND\r\n"
                    data += "Content-Type: json; charset=utf-8\r\n"
                    data += "\r\n" 
                    data += "Link mevcut degil.\r\n"
            
            
            elif (pieces2[0] == 'PUT'):

                if(pathname2[0] == '/rename'):

                    for x in range(len(pathname2)): 
                        
                        stat_oldfilename = False

                        if(pathname2[x][0:11] == 'oldFileName'):
                            
                            index_oldfilename = x
                            stat_oldfilename = True
                            break
                    
                    for x in range(len(pathname2)): 

                        stat_newname = False

                        if(pathname2[x][0:7] == 'newName'):
                            
                            index_newname = x
                            stat_newname = True
                            break
                    
                    #iki variable adı da bulunursa true
                    if(stat_oldfilename == True & stat_newname == True):
                        
                        pathname3 = pathname2[index_oldfilename].split("=")
                        
                        old_file_name = pathname3[1]

                        pathname3_1 = pathname2[index_newname].split("=")
                        
                        new_name = pathname3_1[1]
                        
                        #kaydedilmiş dosyalarda kontrol
                        if(old_file_name in filenames):
                            index_oldcheck = filenames.index(old_file_name)
                            filenames[index_oldcheck] = new_name
                            os.rename(old_file_name,new_name)
                            data = "HTTP/1.1 200 OK\r\n"
                            data += "Content-Type: json; charset=utf-8\r\n"
                            data += "\r\n" 
                            data += "İsim degistirme basarili.\r\n"
                         
                        else: 
                            data = "HTTP/1.1 200 OK\r\n"
                            data += "Content-Type: json; charset=utf-8\r\n"
                            data += "\r\n" 
                            data += "Dosya bulunamadi.\r\n"
                            
                    
                    else:
                        data = "HTTP/1.1 400 Bad Request\r\n"
                        data += "Content-Type: json; charset=utf-8\r\n"
                        data += "\r\n" 
                        data += "Hatali giris\r\n"
                
                else:
                    data = "HTTP/1.1 404 NOT FOUND\r\n"
                    data += "Content-Type: json; charset=utf-8\r\n"
                    data += "\r\n" 
                    data += "Link mevcut degil.\r\n"

            elif(pieces2[0] == 'DELETE'):

                if(pathname2[0] == '/remove'):

                    for x in range(len(pathname2)): 
                        
                        stat_filename = False

                        if(pathname2[x][0:8] == 'fileName'):
                            
                            index_filename = x
                            stat_filename = True
                            break
                    
                    if (stat_filename):
                        pathname4 = pathname2[index_filename].split("=")
                        
                        file_name = pathname4[1]

                        #parametre ile verilen dosya adı kaydedilmiş dosyalarda mevcut ise sil
                        if(file_name in filenames):
                                index_filecheck = filenames.index(file_name)
                                filenames.pop(index_filecheck) 
                                os.remove(file_name)
                                data = "HTTP/1.1 200 OK\r\n"
                                data += "Content-Type: json; charset=utf-8\r\n"
                                data += "\r\n" 
                                data += "Dosya basarili bir sekilde silindi\r\n"
                            
                        else: 
                                data = "HTTP/1.1 200 OK\r\n"
                                data += "Content-Type: json; charset=utf-8\r\n"
                                data += "\r\n" 
                                data += "Dosya bulunamadi\r\n"
                    else:
                        data = "HTTP/1.1 400 Bad Request\r\n"
                        data += "Content-Type: json; charset=utf-8\r\n"
                        data += "\r\n" 
                        data += "fileName parametresi eksik\r\n"
                
                else:
                    data = "HTTP/1.1 404 NOT FOUND\r\n"
                    data += "Content-Type: json; charset=utf-8\r\n"
                    data += "\r\n" 
                    data += "Link mevcut degil.\r\n"
            
            else:
                data = "HTTP/1.1 404 NOT FOUND\r\n"
                data += "Content-Type: json; charset=utf-8\r\n"
                data += "\r\n" 
                data += "HTTP REQUEST bulunamadi.\r\n"
            
                

            clientsocket.sendall(data.encode())
            clientsocket.shutdown(SHUT_WR)

    except KeyboardInterrupt :
        print("\nShutting down...\n");
    except Exception as exc :
        print("Error:\n");
        print(exc)

    serversocket.close()

print('Access http://localhost:8080')
createServer()