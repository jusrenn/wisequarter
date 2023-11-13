*** Settings ***
#


*** Variables ***
${isim}=    Yusuf


*** Test Cases ***
Test 01
    Ekrana Merhaba Yaz
    Ekrana Yaz    Merhaba Yusuf
    Ekrana Yaz    ${isim} Nasilsin?
    Ekrana Wise Quarter Yaz
    ${sayilarin_toplami}=    Sayilari Topla    10    20
    Log To Console    ${sayilarin_toplami}

    ${a}    ${b}=    Iki veya daha fazla deger donduren Keywords
    Log To Console    ${a}
    Log To Console    ${b}

Test 02
    Log To Console    BURASI 2. TEST


*** Keywords ***
Ekrana Merhaba Yaz
    Log To Console    Merhaba

Ekrana Yaz
    [Arguments]    ${yazi}
    Log To Console    ${yazi}

Ekrana ${yazi} Yaz
    Log To Console    ${yazi}

Sayilari Topla
    [Arguments]    ${sayi1}    ${sayi2}
    ${topla}=    Evaluate    ${sayi1} + ${sayi2}
    RETURN    ${topla}

Iki veya daha fazla deger donduren Keywords
    ${isim}=    Set Variable    Yusuf
    ${sehir}=    Set Variable    Helsinki
    RETURN    ${isim}    ${sehir}
