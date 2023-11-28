*** Settings ***
Documentation       Bu test robot framework ile egzersiz yapmak icin olusturuldu.

Resource            ../resources/keywords.resource
Library             ../libs/rastgeleSayi.py
Library             DebugLibrary


*** Variables ***
&{USER}=
...                         gender=M
...                         name=Yusuf
...                         lastname=Ren
...                         email=yusuf@wisequarter.com
...                         password=1234567890
@{expected_menu_items}=
...                         Books
...                         Computers
...                         Electronics
...                         Apparel & Shoes
...                         Digital downloads
...                         Jewelry
...                         Gift Cards


*** Test Cases ***
Yeni Bir Kullanici Ile Sepete Urun Ekleme
    [Documentation]    Yeni bir kullanici olusturup rastgele bir kategoriden
    ...    Rastgele bir urunu secip, sepete ekler ve urun adi ve fiyatinin dogrulamasini gerceklestirir.
    [Tags]    e2e
    Anasayfaya ${BROWSER} Ile Git
    # Yeni Uyelik Olustur    ${USER}
    Yeni Uyelik Olustur
    Kategorileri Kontrol Et
    # Lists Should Be Equal    ${yeni_liste}    ${expected_menu_items}
    Rastgele Kategoriye Git
    Rastgele Urun Sec Ve Urun Detay Sayfasina Git
    Urunu Sepete Ekle
    Sleep    2
    Sepete Git Ve Urunu Kontrol Et
    Close Browser


*** Keywords ***
Kategorileri Kontrol Et
    @{actual_menu_items}=    Get WebElements    xpath=(//ul[@class="list"])[1]//a
    Set Suite Variable    ${actual_menu_items}

    FOR    ${i}    ${element}    IN ENUMERATE    @{actual_menu_items}
        ${text}=    Get Text    ${element}
        Should Be Equal    ${text}    ${expected_menu_items}[${i}]
    END

    # @{yeni_liste}=    Create List
    # FOR    ${element}    IN    @{actual_menu_items}
    #    ${text}=    Get Text    ${element}
    #    Append To List    ${yeni_liste}    ${text}
    # END

Rastgele Kategoriye Git
    ${liste_uzunlugu}=    Get Length    ${actual_menu_items}
    ${sayi}=    Rastgele Sayi    0    ${liste_uzunlugu}
    Click Link    ${actual_menu_items}[${sayi}]

    @{alt_kategori}=    Get WebElements    xpath=//h2[@class="title"]/a
    ${liste_uzunlugu}=    Get Length    ${alt_kategori}

    IF    ${liste_uzunlugu} != 0
        ${sayi}=    Rastgele Sayi    0    ${liste_uzunlugu}
        Click Link    ${alt_kategori}[${sayi}]
    END

Rastgele Urun Sec Ve Urun Detay Sayfasina Git
    @{urunler}=    Get WebElements    xpath=//div[@class="item-box" and .//input]//a
    ${liste_uzunlugu}=    Get Length    ${urunler}
    ${sayi}=    Rastgele Sayi    0    ${liste_uzunlugu}

    Click Link    ${urunler}[${sayi}]

Urunu Sepete Ekle
    ${urun_adi}=    Get Text    xpath=//h1
    ${urun_fiyati}=    Get Text    xpath=//span[starts-with(@class,"price-value")]
    Set Suite Variable    ${urun_adi}
    Set Suite Variable    ${urun_fiyati}
    Click Element    xpath=//input[starts-with(@id,"add-to-cart-button")]

Sepete Git Ve Urunu Kontrol Et
    Click Link    xpath=(//a[contains(.,"Shopping cart")])[1]

    Page Should Contain    ${urun_adi}
    Page Should Contain    ${urun_fiyati}
