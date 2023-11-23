import random

def rastgele_sayi(sayi1 :int, sayi2 :int):
    sayi2 = (int(sayi2) - 1)
    return random.randint(int(sayi1), int(sayi2))