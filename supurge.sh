#!/bin/bash

while getopts p:t:s:e:c: option
do
case "${option}"
in
p ) pval=${OPTARG}
   pflag=1;;
t ) tval=${OPTARG}
   tflag=1;;
s ) sval=${OPTARG}
   sflag=1;;
e ) eval=${OPTARG}
   eflag=1;;
c ) cval=${OPTARG}
   cflag=1;;
*|? ) printf "supurge - v1.0
\ngelistirici: Serkan Çay
\nKULLANIM:[-t value] [-s value] [-e value] [-c value] [-n]
\nARGUMENTLER
\n-t (type): Dizin veya dosya arar. İki değer alır.(d,f) d:dizin f:dosya
\n-s (start): Verilen değer ile başlayanları bulur ve siler.
\n-e (end): Verilen değer ile bitenleri bulur ve siler.
\n-c (contains): Verilen değeri içerenleri bulur ve siler.
\n" $0
   exit 1;;
esac
done

if [ ! -z "$sflag" ]; then
   word="$sval*";
fi

if [ ! -z "$eflag" ]; then
   word="$word*$eval";
fi

if [ ! -z "$cflag" ]; then
   word="$sval*$cval*$eval";
fi

if [ -z "$pflag" ]; then
   pval=$(pwd);
fi

find "$pval" -name "$word" -type "$tval"
printf "Listelenen dizin/dosya(lar) silinecek..\n";
read -p "Silinsin mi(E/H)?" choice
case "$choice" in
   e|E ) printf "Siliniyor!..\n"
	 find "$pval" -name "$word" -type "$tval" -exec rm -rf {} +
	 printf "Silme islemi basariyla tamamlandi!\n";;
   h|H ) echo "Vazgectiniz.\n";;
   * ) echo "Hatali secim.\n";;
esac
