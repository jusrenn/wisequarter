*** Settings ***
#


*** Variables ***
#
${isim}=        Yusuf
@{listem}=      Yusuf    Ahmet    Mehmet    Veli
&{yeniDict}=    name=Yusuf    yas=39    sehir=Helsinki


*** Test Cases ***
Test 01
    Log To Console    ${yeniDict}
    &{yesyeniDict}=    Create Dictionary    name=Ahmet    yas=30
    Log To Console    ${yesyeniDict}


*** Keywords ***
#
