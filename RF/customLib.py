from robot.api import logger
from robot.api.deco import keyword

def sayilariTopla(sayi1, sayi2):
    return int(sayi1) + int(sayi2)

@keyword(name="Yusufun keywordu")
def sayilari_topla_ve_konsola_yaz(sayi1, sayi2):
    logger.console(int(sayi1) + int(sayi2))

