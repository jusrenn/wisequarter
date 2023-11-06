def ekranaMerhabaYaz():
    print("Merhaba!")


#ekranaMerhabaYaz()

def ekranaYaz(cumle):
    print("Merhaba " + cumle)


#ekranaYaz("Yusuf")

def karesiAl(sayi : int) -> int:
    return sayi ** 2

#print(karesiAl(123))

def defaultParametreAlanFonksiyon(isim = "Yusuf"):
    print(f"Merhaba {isim}")

#defaultParametreAlanFonksiyon("Mehmet")
#defaultParametreAlanFonksiyon()

def sayilariTopla(sayi1, sayi2):
    print(sayi1 + sayi2)

sayilariTopla(10, 40)

def birden_cok_sayi_topla(*sayilar):
    toplam = 0
    for s in sayilar:
        toplam += s
    print(toplam)


birden_cok_sayi_topla(10.6, 20, 30.1, 5)

# Bu fonksiyon bool (boolean) deger dondurur
def kontrol(degisken):
    return 'u' in degisken

