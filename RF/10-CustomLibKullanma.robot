*** Settings ***
# Python dosyalarini cagirmak icin Library kullanilir
Library         customLib.py
# Robot framework dosyalarini cagirmak icin Resourse kullanilir
Resource        reusableKeywords.resource
# Python ile olusturdugum locatler dosyasini Variables ile cagiririm.
Variables       Locatler.py
Library         SeleniumLibrary


*** Variables ***
#


*** Test Cases ***
Test 01
    ${sayilarinToplami}=    Sayilari Topla    40    50
    Log To Console    ${sayilarinToplami}

    # Sayilari Topla Ve Konsola Yaz    44    88
    Yusufun keywordu    22    33

    Ekrana merhaba de
    Log To Console    ${uyelikBtn}

    # pip install robotframework-seleniumlibrary
    # pip install webdriver-manager

    # webdrivermanager chrome
    # webdrivermanager firefox
    # pip3 install robotframework-seleniumlibrary


*** Keywords ***
#
