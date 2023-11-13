*** Settings ***
#


*** Variables ***
${isim}=        Yusuf
@{liste}=       Yusuf    Ahmet    Mehmet    Veli
&{MyDict}=      name=Yusuf
...             yas=39
...             sehir=Helsinki
${sayi1}=       0
${sayi2}=       20


*** Test Cases ***
Test 01
    WHILE    ${sayi1} <= 10
        Log To Console    ${sayi1}
        ${sayi1}=    Evaluate    ${sayi1} + 1
    END

    FOR    ${element}    IN    @{liste}
        Log To Console    ${element}
    END

    FOR    ${index}    ${element}    IN ENUMERATE    @{liste}
        Log To Console    ${index}: ${element}
    END


*** Keywords ***
#
