*** Settings ***
#


*** Variables ***
${cumle}=       Bu benim cumlem
${sayi1}=       10
${sayi2}=       20


*** Test Cases ***
Test 01
    IF    ${sayi2} > ${sayi1}
        Log To Console    ${sayi2}, ${sayi1}'den buyuktur
    ELSE
        Log To Console    ${sayi1}, ${sayi2}'den buyuktur
    END

    IF    "Bu" in "${cumle}"    Log To Console    "Bu" kelimesi mevcut


*** Keywords ***
#
