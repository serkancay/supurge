# supurge
supurge ile silmek istediğiniz dosya veya dizinleri nokta atışıyla silebilirsiniz.
<h2>KURULUM</h2>
~$ git clone https://github.com/serkancay/supurge <br>
~$ chmod +x supurge.sh

<h2>KULLANIM</h2>
<b>"win" ile başlayıp "ows" ile biten tüm dosyaları silelim.</b> <br>
~$ ./supurge -p /home -s win -e ows -t f <br>
p: PATH: Arama ve silme işlemini gerçekleştireceğiniz dizin. <br>
s: START: Verilen değer ile başlayanları bulur. <br>
e: END: Verilen değer ile bitenleri bulur. <br>
t: TYPE: Arama-Silme türü. İki şekilde olbilir: d(DIRECTORY), f(FILE) <br>
<br>
<b>"System" ile başlayıp "32" ile biten tüm dizinleri silelim.</b> <br>
~$ ./supurge -p /home -s System -e 32 -t d <br>
<br>
<b>İçerisinde "wiki" geçen tüm dosyaları silelim.</b><br>
~$ ./supurge -p /home -c wiki -t f<br>
c: CONTAINS: Verilen değeri içerenleri bulur.<br>
<br>
<b>Tüm ".txt" dosyalarını silelim."</b><br>
~$ ./supurge -p / -e .txt -t f<br>

<h2>UYARILAR</h2>
supurge bulduğu dosya/dizinleri listeler ve silmek isteyip istemediğinizi sorar. Bulunan dosya/dizinleri dikkatle incelemeniz
size yarar sağlayacaktır. Özellikle Arama-Silme türünün dosya mı dizin mi olduğuna çok dikkat edin. Örneğin sisteminizden
belirli dosyaları silmek istediniz ama Arama-Silme türünü d(DIRECTORY) yaptınız. Belirttiğiniz kriterlere uygun dizinler ve alt
dizinleri silinir.
