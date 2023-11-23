*** Settings ***
Resource    ../resources/keywords.resource
Library     ../libs/rastgeleSayi.py


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
Test 01
    [Documentation]    Siteye uye olunup olunmadigini test eder
    [Tags]    registration
    Anasayfaya ${BROWSER} Ile Git
    # Yeni Uyelik Olustur    ${USER}
    Yeni Uyelik Olustur
    @{actual_menu_items}=    Get WebElements    xpath=(//ul[@class="list"])[1]//a

    FOR    ${i}    ${element}    IN ENUMERATE    @{actual_menu_items}
        ${text}=    Get Text    ${element}
        Should Be Equal    ${text}    ${expected_menu_items}[${i}]
    END

    # @{yeni_liste}=    Create List
    # FOR    ${element}    IN    @{actual_menu_items}
    #    ${text}=    Get Text    ${element}
    #    Append To List    ${yeni_liste}    ${text}
    # END

    # Lists Should Be Equal    ${yeni_liste}    ${expected_menu_items}

    ${liste_uzunlugu}=    Get Length    ${actual_menu_items}
    ${sayi}=    Rastgele Sayi    0    ${liste_uzunlugu}
    Click Link    ${actual_menu_items}[${sayi}]

    @{alt_kategori}=    Get WebElements    xpath=//h2[@class="title"]/a
    ${liste_uzunlugu}=    Get Length    ${alt_kategori}

    IF    ${liste_uzunlugu} != 0
        ${sayi}=    Rastgele Sayi    0    ${liste_uzunlugu}
        Click Link    ${alt_kategori}[${sayi}]
    END

    @{urunler}=    Get WebElements    xpath=//div[@class="item-box" and .//input]//a
    ${liste_uzunlugu}=    Get Length    ${urunler}
    ${sayi}=    Rastgele Sayi    0    ${liste_uzunlugu}

    Click Link    ${urunler}[${sayi}]

    ${urun_adi}=    Get Text    xpath=//h1
    ${urun_fiyati}=    Get Text    xpath=//span[starts-with(@class,"price-value")]

    Click Element    xpath=//input[starts-with(@id,"add-to-cart-button")]
    Sleep    2
    Click Link    xpath=(//a[contains(.,"Shopping cart")])[1]

    Page Should Contain    ${urun_adi}
    Page Should Contain    ${urun_fiyati}

    Close Browser
