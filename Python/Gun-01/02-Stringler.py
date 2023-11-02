metin = "Merhaba dunya!"

yeniDegisken = metin.split() # Liste verir => ["Merhaba", "dunya!"]

print(metin.upper()) # Buyuk harfe cevirir
print(metin.replace("M", "Y")) # M harfini Y harfine cevirdik

print(yeniDegisken)
print(type(yeniDegisken)) # type fonksiyonu ile degiskenin tipini ogreniriz.

print(metin[1]) # indexi 1 olan degeri verir

# metin[baslangic:bitis:kacarKacar]
print(metin[0:10:2]) # Mraad
print(metin[3:]) #haba dunya!
print(metin[:4]) # Merh
print(metin[::2])

#sonEleman = len(metin)-1
print(metin[-2])

print(len(metin)) # Degiskenin veya listenin uzunlugunu verir

print(metin[::-1])