myList = ["Yusuf", 39, True, 3.9]
print(myList)
print(type(myList))
print(type(myList[0]))
print(type(myList[1]))
print(type(myList[2]))
print(type(myList[3]))

myList.append("Wise Quarter")
myList.append(39)
myList.append(False)
print(myList)

if 3.9 in myList:
    print("Evet, gercekten var")
else:
    print("Hayir, kesinlikle yok")
nums = [1, 10, 5, 8]
print(sorted(nums))

del myList[2]
print(myList)

yeniListe = list(range(10, 50))
print(yeniListe)
urunler = ["Bilgisayar", "Zil", "Laptop", "Monitör"]

print(sorted(urunler))

yeniUrunler = []
print(type(yeniUrunler))
yepyeniUrunler = list()
print(type(yepyeniUrunler))