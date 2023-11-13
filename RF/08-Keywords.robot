*** Settings ***
Documentation       Bu suite ile ABC numarali user storynin ozellikleri test edilir

Library             Collections

Suite Setup         Testi ${BROWSER} Browseri Ile Baslat
# Komut satirindan parametre gondermek icin -v DEGISKENADI:DEGER kullanilir
# TESTIN PATH'i herzaman en sona yazilir
# Her variable icin ayri ayri -v kullanilir
# robot -v BROWSER:Opera -v SIFRE:123456 -v MAIL:abc@abc.com RF/08-Keywords.robot
# Daha onceden tanimli bir degiskene konsoldan komut satiri ile yeni deger verilebilir.
# Komut satirindan gonderilen deger öncelikli kabul edilir.


*** Variables ***
${cokYeniDegisken}=     BURASASI COK YENI


*** Test Cases ***
Test 01
    [Documentation]    Bu test deneme amacli olusturulmustur
    ${sayi}=    Set Variable    100
    @{listem}=    Create List    2    4    6    8    10    ${sayi}    a
    # Append To List    ${listem}    ${sayi}
    Sayilari Ikiye Bol    ${listem}
    # Log To Console    ${SIFRE}
    # Log To Console    ${MAIL}

    Log To Console    ${cokYeniDegisken}


*** Keywords ***
Sayilari Ikiye Bol
    [Documentation]    Bu keyword gelen sayilari 2'ye boler
    [Arguments]    ${liste}
    FOR    ${e}    IN    @{liste}
        ${sonuc}=    Evaluate    ${e} / 2
        Log To Console    ${sonuc}
    END

Testi ${browser} Browseri Ile Baslat
    [Documentation]    Bu keyword konsoldan parametre ile
    ...    Browser adi ile testi ayaga kaldirir
    ...    Args ${browser}= browser adi
    Log To Console    ${browser}
