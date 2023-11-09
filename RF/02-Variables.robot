*** Settings ***
#
Library     String


*** Variables ***
${isim}=    Yusuf
${yas}=     39


*** Test Cases ***
Bu benim ilk testim
    Log To Console    ${isim} merhaba. Senin yasin ${yas}
    ${sehir}=    Set Variable    Helsinki
    Log To Console    ${sehir}

    ${sayi1}=    Set Variable    10
    ${sayi2}=    Set Variable    20
    ${toplam}=    Evaluate    ${sayi1} + ${sayi2}
    Log To Console    ${toplam}

    ${cumle}=    Set Variable    BUNLAR BUYUK HARF
    ${kucukHarf}=    Convert To Lower Case    ${cumle}
    Log To Console    ${kucukHarf}


*** Keywords ***
#
