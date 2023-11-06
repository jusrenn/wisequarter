isimler = ["Yusuf", "Ahmet", "Mehmet", "Yunus"]

# Bu fonksiyon bool (boolean) deger dondurur
def kontrol(degisken):
    return 'u' in degisken


#print("##########################")
#print(list(map(kontrol, isimler)))
# Ciktisi -> True, False, False, True

#print("##########################")
#print(list(filter(kontrol, isimler)))
# Ciktisi -> Yusuf, Yunus
"""
if "u" in "Ahmet":
    print(True)
else:
    print(False)
"""
print(kontrol("ahmet"))

