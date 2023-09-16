#Download kısmıyla alakalı bir not
Download kısmında dosyaya eklediğim ekran alıntısındaki hatayı yaşıyorum. Postmanden kaynaklı olabileceğini düşünüyorum. 
Hangi dosyanın indirileceğini filan anlayıp işlemi başlatıyor fakat error veriyor sonrasında.

#Programın çalışması
Programın temel amacı soket kullanarak dinlediğimiz kanaldan gelen TCP verisinin header'ını kaydederek işlemek.
Gelen veri GET HTTP/1.1 url.. biçiminde geliyor. Burdan http requestini alacak şekilde parse ettim ve ilk sınıflandırmayı yapabildim.
Böylece hangi HTTP requesti ile veri geldiğini anlayabildim. Sonrasında aynı şekilde url yi aldım ve onu da içerisinde parse ettim. 
Url yi parse ettikten sonra gideceği endpointi ve varsa variable=int biçiminde değişkenlerini elde ettim. 
Bu bilgileri de elde ettikten sonra ödev dökümanında yapılması söylenen işlemleri yaptırdım. 
Asal sayı olup olmadığını check için fonksiyon yazdım. Dosya upload kısmında TCP header'ında bulunan filename parametresini buldum.
Sonrasında aynı isimde bir dosya oluşturdum. Bunu server.py dosyamızın bulunduğu directory de oluşturuyor. 
Oluşturduğum dosyaların isimlerini string array de tuttum. Bu sayede rename remove ve download işlemlerini gerçekleştirebildim.

FURKAN NART CANIBEK
191201033