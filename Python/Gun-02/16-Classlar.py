class Insan():
    def __init__(self, isim :str, soyisim :str, yas : int):
        self.isim = isim
        self.soyisim = soyisim
        self.yas = yas

    def bilgileriYaz(self):
        print(f"Kullanicinin adi soyadi: {self.isim} {self.soyisim}. Yasi: {self.yas}")
    
    def __str__(self):
        return f"{self.isim} {self.soyisim} {self.yas}"
    

    def __len__(self):
        return self.yas


insan = Insan("Yusuf", "Yusufoglu", 39)

insan.bilgileriYaz()

print(str(insan))

print(len(insan))


class Yusuf(Insan):
    def __init__(self, isim, soyisim, yas):
        super().__init__(isim, soyisim, yas)

    def ysfFonk(self):
        print("Bu method yusufa ait")


ysf = Yusuf("AAA", "BBBB", 10)

ysf.ysfFonk()
ysf.bilgileriYaz()