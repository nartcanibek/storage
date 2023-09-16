from socket import *
from unicodedata import decimal

#from matplotlib.pyplot import flag
#import numpy as np

def PrimeCheck(num):

    flag = True

    # prime numbers are greater than 1
    if num > 1.0:
        # check for factors
        for i in np.arange(2.0, num,1.0):
            if (num % i) == 0.0:
                # if factor is found, set flag to True
                flag = False
                # break out of loop
                break

    return flag   
    

def createServer():
    serversocket = socket(AF_INET, SOCK_STREAM)
    try :
        serversocket.bind(('localhost',8080))
        serversocket.listen(5)
        while(1):
            (clientsocket, address) = serversocket.accept()

            rd = clientsocket.recv(5000).decode()
            pieces = rd.split("\n")
            pieces2 = pieces[0].split(" ")
            print(pieces2[0])
            pathname = pieces[0].split()[1]
            print(pathname)
            pathname2 = pathname.split("?")
            print(pathname2)        

            if ( len(pieces) > 0 ) : print(pieces[0])

            if(pieces2[0] == "GET"):
                
                if(pathname2[0] == "/isPrime"):

                    for x in range(len(pathname2)): 
                        
                        stat = False

                        if(pathname2[x][0:6] == 'number'):
                            index = x
                            stat = True
                            break
                    
                    
                    if (stat == True):       
                        pathname3 = pathname2[x].split("=")
                        print (pathname3)
                        
                        if(pathname3[0] == 'number'): var = pathname3[1]
                        
                        var = float(var)

                        if(var.is_integer()):

                            print(var)
                            var_check = PrimeCheck(var)
                            print(var_check)

                            data = "HTTP/1.1 200 OK\r\n"
                            data += "Content-Type: json; charset=utf-8\r\n"
                            data += "\r\n" 

                            if var_check:
                                data += "asal\r\n"
                            else:
                                data += "asal degil\r\n"
                            
                            
                        else:

                            data = "HTTP/1.1 400 Bad Request\r\n"
                            data += "Content-Type: json; charset=utf-8\r\n"
                            data += "\r\n" 
                            data += "lütfen tam sayi girin\r\n"

                    else:
                        data = "HTTP/1.1 400 Bad Request\r\n"
                        data += "Content-Type: json; charset=utf-8\r\n"
                        data += "\r\n" 
                        data += "yanlis giris\r\n"

            if (pieces2[0] == "POST"):

                if(pathname2[0] == "/upload"):
                    
                    print (rd)
                    rd2 = rd.split("\n")
                    rd3 = rd2[-4].split("\"")
                    print(rd2)
                    print(rd3)
                    if(len(rd3) > 2):
                        filename = rd3[-2]
                        file = open(filename, "wt")
                        file.write(rd)
                        file.close()
                        data = "HTTP/1.1 200 OK\r\n"
                        data += "Content-Type: json; charset=utf-8\r\n"
                        data += "\r\n" 
                        data += "wip\r\n"
                        print("post oldu")

                    else: 
                        
                        data = "HTTP/1.1 400 Bad Request\r\n"
                        data += "Content-Type: json; charset=utf-8\r\n"
                        data += "\r\n" 
                        data += "dosya yok\r\n"
            
            
            if (pieces2[0] == "PUT"):

                if(pathname2[0] == "/rename"):

                    for x in range(len(pathname2)): 
                        
                        stat1 = False
                        stat2 = False

                        if(pathname2[x][0:11] == 'oldFileName'):
                            index1 = x
                            stat1 = True
                            break

                        if(pathname2[x][0:7] == 'newName'):
                            index2 = x
                            stat2 = True
                            break

                    if(stat1 == True & stat2 == True):
                        print("deneme")

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