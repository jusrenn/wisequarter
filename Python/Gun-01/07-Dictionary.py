myDictionary = {
    "name" : "Yusuf",
    "yas" : 39,
    "durum" : True,
    "1" : "Bu da boyle bisey"
}

myDictionary["yeniKey"] = "Bu da onun degeri"

print(myDictionary)

insanlar = {
    "id1" : {
        "name" : "Yusuf",
        "yas": 39,
        "phone" : ["044123123", "123123123"]
    },
    "id2" : {
        "name" : "Ahmet",
        "yas" : 40
    }
}

print(insanlar)


print("____________________")
print(insanlar["id1"]["phone"][1])
print("----------------------")
print(insanlar["id2"]["yas"])
print(myDictionary)


with open("Python/Gun-01/metin.txt", "r") as dosya:
    print(dosya.read())

