sayi1 = 10
sayi2 = 20

# asdasdasd
"""
if(sayi1 > sayi2) {
    System.out.println("Sayi1 sayi2den buyuktur")
}
"""

if sayi1 > sayi2:
    print("sayi1 sayi2den buyuktur")
print("Burasi ifin disindadir!")

sayi3 = 30
sayi4 = 20

if sayi3 > sayi4:
    print(f"{sayi3} {sayi4} den buyuktur")
elif sayi3 == sayi4:
    print("Sayilari birbirine esittir")
else:
    print(f"{sayi4} {sayi3} den buyuktur")

cumle = "Burasi benim cumlem!"

if "benim" in cumle:
    print("Evet varmis")
else:
    print("Hayir yokmus")