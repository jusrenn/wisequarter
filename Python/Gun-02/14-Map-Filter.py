isimler = ["Yusuf", "Ahmet", "Mehmet", "Yunus"]

def kontrol(degisken):
    return 'u' in degisken


#print("##########################")
#print(list(map(kontrol, isimler)))

#print("##########################")
#print(list(filter(kontrol, isimler)))
"""
if "u" in "Ahmet":
    print(True)
else:
    print(False)
"""
print(kontrol("ahmet"))

